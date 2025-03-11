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

class _LoginButtonPressed implements LoginEvent {
  const _LoginButtonPressed({required this.email, required this.password});

  final String email;
  final String password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginButtonPressedCopyWith<_LoginButtonPressed> get copyWith =>
      __$LoginButtonPressedCopyWithImpl<_LoginButtonPressed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginButtonPressed &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'LoginEvent.loginButtonPressed(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$LoginButtonPressedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$LoginButtonPressedCopyWith(
          _LoginButtonPressed value, $Res Function(_LoginButtonPressed) _then) =
      __$LoginButtonPressedCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginButtonPressedCopyWithImpl<$Res>
    implements _$LoginButtonPressedCopyWith<$Res> {
  __$LoginButtonPressedCopyWithImpl(this._self, this._then);

  final _LoginButtonPressed _self;
  final $Res Function(_LoginButtonPressed) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_LoginButtonPressed(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _CheckLoginStatus implements LoginEvent {
  const _CheckLoginStatus();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckLoginStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.checkLoginStatus()';
  }
}

/// @nodoc

class _RegisterButtonPressed implements LoginEvent {
  const _RegisterButtonPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RegisterButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.registerButtonPressed()';
  }
}

/// @nodoc

class _GoogleLoginRequested implements LoginEvent {
  const _GoogleLoginRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GoogleLoginRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.googleLoginRequested()';
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
mixin _$LoginState {
  bool get loading;
  bool get success;
  bool get failure;
  bool get googleLoginSuccess;
  bool get googleLoginFailure;
  bool get isSignUpBtnPressed;

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
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.googleLoginSuccess, googleLoginSuccess) ||
                other.googleLoginSuccess == googleLoginSuccess) &&
            (identical(other.googleLoginFailure, googleLoginFailure) ||
                other.googleLoginFailure == googleLoginFailure) &&
            (identical(other.isSignUpBtnPressed, isSignUpBtnPressed) ||
                other.isSignUpBtnPressed == isSignUpBtnPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failure,
      googleLoginSuccess, googleLoginFailure, isSignUpBtnPressed);

  @override
  String toString() {
    return 'LoginState(loading: $loading, success: $success, failure: $failure, googleLoginSuccess: $googleLoginSuccess, googleLoginFailure: $googleLoginFailure, isSignUpBtnPressed: $isSignUpBtnPressed)';
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
      bool success,
      bool failure,
      bool googleLoginSuccess,
      bool googleLoginFailure,
      bool isSignUpBtnPressed});
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
    Object? success = null,
    Object? failure = null,
    Object? googleLoginSuccess = null,
    Object? googleLoginFailure = null,
    Object? isSignUpBtnPressed = null,
  }) {
    return _then(_self.copyWith(
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      googleLoginSuccess: null == googleLoginSuccess
          ? _self.googleLoginSuccess
          : googleLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      googleLoginFailure: null == googleLoginFailure
          ? _self.googleLoginFailure
          : googleLoginFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpBtnPressed: null == isSignUpBtnPressed
          ? _self.isSignUpBtnPressed
          : isSignUpBtnPressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _LoginState implements LoginState {
  const _LoginState(
      {this.loading = false,
      this.success = false,
      this.failure = false,
      this.googleLoginSuccess = false,
      this.googleLoginFailure = false,
      this.isSignUpBtnPressed = false});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failure;
  @override
  @JsonKey()
  final bool googleLoginSuccess;
  @override
  @JsonKey()
  final bool googleLoginFailure;
  @override
  @JsonKey()
  final bool isSignUpBtnPressed;

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
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.googleLoginSuccess, googleLoginSuccess) ||
                other.googleLoginSuccess == googleLoginSuccess) &&
            (identical(other.googleLoginFailure, googleLoginFailure) ||
                other.googleLoginFailure == googleLoginFailure) &&
            (identical(other.isSignUpBtnPressed, isSignUpBtnPressed) ||
                other.isSignUpBtnPressed == isSignUpBtnPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, success, failure,
      googleLoginSuccess, googleLoginFailure, isSignUpBtnPressed);

  @override
  String toString() {
    return 'LoginState(loading: $loading, success: $success, failure: $failure, googleLoginSuccess: $googleLoginSuccess, googleLoginFailure: $googleLoginFailure, isSignUpBtnPressed: $isSignUpBtnPressed)';
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
      bool success,
      bool failure,
      bool googleLoginSuccess,
      bool googleLoginFailure,
      bool isSignUpBtnPressed});
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
    Object? success = null,
    Object? failure = null,
    Object? googleLoginSuccess = null,
    Object? googleLoginFailure = null,
    Object? isSignUpBtnPressed = null,
  }) {
    return _then(_LoginState(
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as bool,
      googleLoginSuccess: null == googleLoginSuccess
          ? _self.googleLoginSuccess
          : googleLoginSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      googleLoginFailure: null == googleLoginFailure
          ? _self.googleLoginFailure
          : googleLoginFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpBtnPressed: null == isSignUpBtnPressed
          ? _self.isSignUpBtnPressed
          : isSignUpBtnPressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
