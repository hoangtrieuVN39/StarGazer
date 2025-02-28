import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is RegisterButtonPressed) {
      yield RegisterLoading();

      try {
        // Simulate registration process
        await Future.delayed(Duration(seconds: 2));

        if (event.password != event.confirmPassword) {
          yield RegisterFailure(error: 'Passwords do not match');
        } else {
          yield RegisterSuccess(message: 'Registration successful');
        }
      } catch (error) {
        yield RegisterFailure(error: error.toString());
      }
    }
  }
}
