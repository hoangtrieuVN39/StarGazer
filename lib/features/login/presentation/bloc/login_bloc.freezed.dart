// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent()';
  }
}

/// @nodoc
class $LoginEventCopyWith<$Res> {
  $LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}

/// @nodoc

class _OnInitial implements LoginEvent {
  const _OnInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.onInitial()';
  }
}

/// @nodoc

class _LoginButtonPressed implements LoginEvent {
  const _LoginButtonPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoginButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.loginButtonPressed()';
  }
}

/// @nodoc

class _OnGoogleLoginPressed implements LoginEvent {
  const _OnGoogleLoginPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnGoogleLoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.onGoogleLoginPressed()';
  }
}

/// @nodoc

class _SignUp implements LoginEvent {
  const _SignUp();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.signUp()';
  }
}

/// @nodoc

class _EmailChanged implements LoginEvent {
  const _EmailChanged(this.email);

  final String email;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'LoginEvent.emailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$EmailChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) _then) =
      __$EmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(this._self, this._then);

  final _EmailChanged _self;
  final $Res Function(_EmailChanged) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_EmailChanged(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _PasswordChanged implements LoginEvent {
  const _PasswordChanged(this.password);

  final String password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class _$PasswordChangedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) _then) =
      __$PasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(this._self, this._then);

  final _PasswordChanged _self;
  final $Res Function(_PasswordChanged) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(_PasswordChanged(
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$LoginState {
  bool get loading;
  bool get emailSuccess;
  bool get googleSuccess;
  bool get emailFailure;
  bool get googleFailure;
  bool get googleUserNotFound;
  bool get isSignUpBtnPressed;
  User? get user;
  String get email;
  String get password;
  String get id;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.emailSuccess, emailSuccess) ||
                other.emailSuccess == emailSuccess) &&
            (identical(other.googleSuccess, googleSuccess) ||
                other.googleSuccess == googleSuccess) &&
            (identical(other.emailFailure, emailFailure) ||
                other.emailFailure == emailFailure) &&
            (identical(other.googleFailure, googleFailure) ||
                other.googleFailure == googleFailure) &&
            (identical(other.googleUserNotFound, googleUserNotFound) ||
                other.googleUserNotFound == googleUserNotFound) &&
            (identical(other.isSignUpBtnPressed, isSignUpBtnPressed) ||
                other.isSignUpBtnPressed == isSignUpBtnPressed) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      emailSuccess,
      googleSuccess,
      emailFailure,
      googleFailure,
      googleUserNotFound,
      isSignUpBtnPressed,
      user,
      email,
      password,
      id);

  @override
  String toString() {
    return 'LoginState(loading: $loading, emailSuccess: $emailSuccess, googleSuccess: $googleSuccess, emailFailure: $emailFailure, googleFailure: $googleFailure, googleUserNotFound: $googleUserNotFound, isSignUpBtnPressed: $isSignUpBtnPressed, user: $user, email: $email, password: $password, id: $id)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {bool loading,
      bool emailSuccess,
      bool googleSuccess,
      bool emailFailure,
      bool googleFailure,
      bool googleUserNotFound,
      bool isSignUpBtnPressed,
      User? user,
      String email,
      String password,
      String id});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? emailSuccess = null,
    Object? googleSuccess = null,
    Object? emailFailure = null,
    Object? googleFailure = null,
    Object? googleUserNotFound = null,
    Object? isSignUpBtnPressed = null,
    Object? user = freezed,
    Object? email = null,
    Object? password = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      emailSuccess: null == emailSuccess
          ? _self.emailSuccess
          : emailSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      googleSuccess: null == googleSuccess
          ? _self.googleSuccess
          : googleSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      emailFailure: null == emailFailure
          ? _self.emailFailure
          : emailFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      googleFailure: null == googleFailure
          ? _self.googleFailure
          : googleFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      googleUserNotFound: null == googleUserNotFound
          ? _self.googleUserNotFound
          : googleUserNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpBtnPressed: null == isSignUpBtnPressed
          ? _self.isSignUpBtnPressed
          : isSignUpBtnPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LoginState implements LoginState {
  const _LoginState(
      {this.loading = false,
      this.emailSuccess = false,
      this.googleSuccess = false,
      this.emailFailure = false,
      this.googleFailure = false,
      this.googleUserNotFound = false,
      this.isSignUpBtnPressed = false,
      this.user = null,
      this.email = '',
      this.password = '',
      this.id = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool emailSuccess;
  @override
  @JsonKey()
  final bool googleSuccess;
  @override
  @JsonKey()
  final bool emailFailure;
  @override
  @JsonKey()
  final bool googleFailure;
  @override
  @JsonKey()
  final bool googleUserNotFound;
  @override
  @JsonKey()
  final bool isSignUpBtnPressed;
  @override
  @JsonKey()
  final User? user;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String id;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.emailSuccess, emailSuccess) ||
                other.emailSuccess == emailSuccess) &&
            (identical(other.googleSuccess, googleSuccess) ||
                other.googleSuccess == googleSuccess) &&
            (identical(other.emailFailure, emailFailure) ||
                other.emailFailure == emailFailure) &&
            (identical(other.googleFailure, googleFailure) ||
                other.googleFailure == googleFailure) &&
            (identical(other.googleUserNotFound, googleUserNotFound) ||
                other.googleUserNotFound == googleUserNotFound) &&
            (identical(other.isSignUpBtnPressed, isSignUpBtnPressed) ||
                other.isSignUpBtnPressed == isSignUpBtnPressed) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      emailSuccess,
      googleSuccess,
      emailFailure,
      googleFailure,
      googleUserNotFound,
      isSignUpBtnPressed,
      user,
      email,
      password,
      id);

  @override
  String toString() {
    return 'LoginState(loading: $loading, emailSuccess: $emailSuccess, googleSuccess: $googleSuccess, emailFailure: $emailFailure, googleFailure: $googleFailure, googleUserNotFound: $googleUserNotFound, isSignUpBtnPressed: $isSignUpBtnPressed, user: $user, email: $email, password: $password, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) _then) =
      __$LoginStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool emailSuccess,
      bool googleSuccess,
      bool emailFailure,
      bool googleFailure,
      bool googleUserNotFound,
      bool isSignUpBtnPressed,
      User? user,
      String email,
      String password,
      String id});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? loading = null,
    Object? emailSuccess = null,
    Object? googleSuccess = null,
    Object? emailFailure = null,
    Object? googleFailure = null,
    Object? googleUserNotFound = null,
    Object? isSignUpBtnPressed = null,
    Object? user = freezed,
    Object? email = null,
    Object? password = null,
    Object? id = null,
  }) {
    return _then(_LoginState(
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      emailSuccess: null == emailSuccess
          ? _self.emailSuccess
          : emailSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      googleSuccess: null == googleSuccess
          ? _self.googleSuccess
          : googleSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      emailFailure: null == emailFailure
          ? _self.emailFailure
          : emailFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      googleFailure: null == googleFailure
          ? _self.googleFailure
          : googleFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      googleUserNotFound: null == googleUserNotFound
          ? _self.googleUserNotFound
          : googleUserNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpBtnPressed: null == isSignUpBtnPressed
          ? _self.isSignUpBtnPressed
          : isSignUpBtnPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
