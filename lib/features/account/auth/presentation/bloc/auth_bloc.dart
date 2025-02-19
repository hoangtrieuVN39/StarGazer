import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/user.dart';

// Events
abstract class AuthEvent {}

class SignInWithEmailPassword extends AuthEvent {
  final String email;
  final String password;

  SignInWithEmailPassword(this.email, this.password);
}

class SignInWithGoogle extends AuthEvent {}

class SignInWithApple extends AuthEvent {}

class SignUp extends AuthEvent {
  final String email;
  final String password;
  final String? displayName;
  final String confirmPassword;

  SignUp(this.email, this.password, this.confirmPassword, {this.displayName});
}

class SignOut extends AuthEvent {}

class CheckAuthStatusEvent extends AuthEvent {}

// States
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final User? user;

  AuthSuccess([this.user]);
}

class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}

class AuthFailure extends AuthState {
  final String error;
  AuthFailure(this.error);
}

class ValidationFailure extends AuthState {
  final List<String> errors;

  ValidationFailure(this.errors);
}

// BLoC
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc(this.repository) : super(AuthInitial()) {
    // Handle sign in with email and password
    on<SignInWithEmailPassword>((event, emit) async {
      emit(AuthLoading());
      try {
        // Enhanced validation
        List<String> errors = [];
        if (event.email.isEmpty) {
          errors.add('Email cannot be empty');
        } else if (!await repository.validateEmail(event.email)) {
          errors.add('Invalid email format');
        }

        if (event.password.isEmpty) {
          errors.add('Password cannot be empty');
        } else if (event.password.length < 6) {
          errors.add('Password must be at least 6 characters long');
        }

        if (errors.isNotEmpty) {
          emit(ValidationFailure(errors));
          return;
        }

        // Attempt sign in
        final user = await repository.signInWithEmailPassword(
          event.email,
          event.password,
        );
        if (user != null) {
          emit(AuthSuccess(user));
        } else {
          emit(AuthFailure('Invalid email or password'));
        }
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    // Handle sign in with Google
    on<SignInWithGoogle>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await repository.signInWithGoogle();
        if (user != null) {
          emit(AuthSuccess(user));
        } else {
          emit(AuthFailure('Google sign in failed'));
        }
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    // Handle sign in with Apple
    on<SignInWithApple>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await repository.signInWithApple();
        if (user != null) {
          emit(AuthSuccess(user));
        } else {
          emit(AuthFailure('Apple sign in failed'));
        }
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    // Handle sign up
    on<SignUp>((event, emit) async {
      emit(AuthLoading());
      try {
        // Enhanced validation
        List<String> errors = [];
        if (event.email.isEmpty) {
          errors.add('Email cannot be empty');
        } else if (!await repository.validateEmail(event.email)) {
          errors.add('Invalid email format');
        }

        // More comprehensive password validation
        if (event.password.isEmpty) {
          errors.add('Password cannot be empty');
        } else if (event.password.length < 8) {
          errors.add('Password must be at least 8 characters long');
        } else if (!await repository.validatePassword(event.password)) {
          errors.add(
            'Password must contain uppercase, lowercase, number, and special character',
          );
        }

        if (event.confirmPassword.isEmpty) {
          errors.add('Confirm password cannot be empty');
        } else if (event.password != event.confirmPassword) {
          errors.add('Passwords do not match');
        }

        // Display name validation (optional field)
        if (event.displayName != null && event.displayName!.isNotEmpty) {
          if (event.displayName!.length < 3) {
            errors.add('Display name must be at least 3 characters');
          } else if (event.displayName!.length > 30) {
            errors.add('Display name must be less than 30 characters');
          }
        }

        if (errors.isNotEmpty) {
          emit(ValidationFailure(errors));
          return;
        }

        // Attempt sign up
        final user = await repository.signUp(
          event.email,
          event.password,
          event.displayName,
        );
        if (user != null) {
          emit(AuthSuccess(user));
        } else {
          emit(AuthFailure('Sign up failed. Email may already be in use.'));
        }
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    // Handle sign out
    on<SignOut>((event, emit) async {
      emit(AuthLoading());
      try {
        await repository.signOut();
        emit(AuthInitial());
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    // Check authentication status
    on<CheckAuthStatusEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await repository.getCurrentUser();
        if (user != null) {
          emit(AuthSuccess(user));
        } else {
          emit(AuthInitial());
        }
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });
  }
}
