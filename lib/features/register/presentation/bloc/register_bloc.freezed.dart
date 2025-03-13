// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegisterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent()';
  }
}

/// @nodoc
class $RegisterEventCopyWith<$Res> {
  $RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}

/// @nodoc

class _OnGoogleSignUpPressed implements RegisterEvent {
  const _OnGoogleSignUpPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnGoogleSignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent.onGoogleSignUpPressed()';
  }
}

/// @nodoc

class _OnSignUpPressed implements RegisterEvent {
  const _OnSignUpPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnSignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent.onSignUpPressed()';
  }
}

/// @nodoc

class _OnEmailSignUpPressed implements RegisterEvent {
  const _OnEmailSignUpPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnEmailSignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent.onEmailSignUpPressed()';
  }
}

/// @nodoc

class _OnSignUpSuccess implements RegisterEvent {
  const _OnSignUpSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnSignUpSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent.onSignUpSuccess()';
  }
}

/// @nodoc

class _OnLoginPressed implements RegisterEvent {
  const _OnLoginPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnLoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent.onLoginPressed()';
  }
}

/// @nodoc

class _OnVerifyEmailPressed implements RegisterEvent {
  const _OnVerifyEmailPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnVerifyEmailPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent.onVerifyEmailPressed()';
  }
}

/// @nodoc

class _OnEmailChanged implements RegisterEvent {
  const _OnEmailChanged(this.email);

  final String email;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnEmailChangedCopyWith<_OnEmailChanged> get copyWith =>
      __$OnEmailChangedCopyWithImpl<_OnEmailChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'RegisterEvent.onEmailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$OnEmailChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$OnEmailChangedCopyWith(
          _OnEmailChanged value, $Res Function(_OnEmailChanged) _then) =
      __$OnEmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$OnEmailChangedCopyWithImpl<$Res>
    implements _$OnEmailChangedCopyWith<$Res> {
  __$OnEmailChangedCopyWithImpl(this._self, this._then);

  final _OnEmailChanged _self;
  final $Res Function(_OnEmailChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_OnEmailChanged(
      null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _OnPasswordChanged implements RegisterEvent {
  const _OnPasswordChanged(this.password);

  final String password;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnPasswordChangedCopyWith<_OnPasswordChanged> get copyWith =>
      __$OnPasswordChangedCopyWithImpl<_OnPasswordChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'RegisterEvent.onPasswordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class _$OnPasswordChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$OnPasswordChangedCopyWith(
          _OnPasswordChanged value, $Res Function(_OnPasswordChanged) _then) =
      __$OnPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$OnPasswordChangedCopyWithImpl<$Res>
    implements _$OnPasswordChangedCopyWith<$Res> {
  __$OnPasswordChangedCopyWithImpl(this._self, this._then);

  final _OnPasswordChanged _self;
  final $Res Function(_OnPasswordChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(_OnPasswordChanged(
      null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _OnNameChanged implements RegisterEvent {
  const _OnNameChanged(this.name);

  final String name;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnNameChangedCopyWith<_OnNameChanged> get copyWith =>
      __$OnNameChangedCopyWithImpl<_OnNameChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnNameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'RegisterEvent.onNameChanged(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$OnNameChangedCopyWith<$Res>
    implements $RegisterEventCopyWith<$Res> {
  factory _$OnNameChangedCopyWith(
          _OnNameChanged value, $Res Function(_OnNameChanged) _then) =
      __$OnNameChangedCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$OnNameChangedCopyWithImpl<$Res>
    implements _$OnNameChangedCopyWith<$Res> {
  __$OnNameChangedCopyWithImpl(this._self, this._then);

  final _OnNameChanged _self;
  final $Res Function(_OnNameChanged) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_OnNameChanged(
      null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _OnPasswordVisibleChanged implements RegisterEvent {
  const _OnPasswordVisibleChanged();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnPasswordVisibleChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegisterEvent.onPasswordVisibleChanged()';
  }
}

/// @nodoc

class _OnInitial implements RegisterEvent {
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
    return 'RegisterEvent.onInitial()';
  }
}

/// @nodoc
mixin _$RegisterState {
  String get email;
  String get name;
  String get uid;
  String get password;
  bool get isPasswordVisible;
  bool get isGoogleSignUp;
  bool get isEmailSignUp;
  bool get isSignUpSuccess;
  bool get isLoginPressed;
  bool get isLogin;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      _$RegisterStateCopyWithImpl<RegisterState>(
          this as RegisterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(other.isGoogleSignUp, isGoogleSignUp) ||
                other.isGoogleSignUp == isGoogleSignUp) &&
            (identical(other.isEmailSignUp, isEmailSignUp) ||
                other.isEmailSignUp == isEmailSignUp) &&
            (identical(other.isSignUpSuccess, isSignUpSuccess) ||
                other.isSignUpSuccess == isSignUpSuccess) &&
            (identical(other.isLoginPressed, isLoginPressed) ||
                other.isLoginPressed == isLoginPressed) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      name,
      uid,
      password,
      isPasswordVisible,
      isGoogleSignUp,
      isEmailSignUp,
      isSignUpSuccess,
      isLoginPressed,
      isLogin);

  @override
  String toString() {
    return 'RegisterState(email: $email, name: $name, uid: $uid, password: $password, isPasswordVisible: $isPasswordVisible, isGoogleSignUp: $isGoogleSignUp, isEmailSignUp: $isEmailSignUp, isSignUpSuccess: $isSignUpSuccess, isLoginPressed: $isLoginPressed, isLogin: $isLogin)';
  }
}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) _then) =
      _$RegisterStateCopyWithImpl;
  @useResult
  $Res call(
      {String email,
      String name,
      String uid,
      String password,
      bool isPasswordVisible,
      bool isGoogleSignUp,
      bool isEmailSignUp,
      bool isSignUpSuccess,
      bool isLoginPressed,
      bool isLogin});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? uid = null,
    Object? password = null,
    Object? isPasswordVisible = null,
    Object? isGoogleSignUp = null,
    Object? isEmailSignUp = null,
    Object? isSignUpSuccess = null,
    Object? isLoginPressed = null,
    Object? isLogin = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _self.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleSignUp: null == isGoogleSignUp
          ? _self.isGoogleSignUp
          : isGoogleSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailSignUp: null == isEmailSignUp
          ? _self.isEmailSignUp
          : isEmailSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpSuccess: null == isSignUpSuccess
          ? _self.isSignUpSuccess
          : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginPressed: null == isLoginPressed
          ? _self.isLoginPressed
          : isLoginPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _self.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _RegisterState implements RegisterState {
  const _RegisterState(
      {this.email = '',
      this.name = '',
      this.uid = '',
      this.password = '',
      this.isPasswordVisible = false,
      this.isGoogleSignUp = false,
      this.isEmailSignUp = false,
      this.isSignUpSuccess = false,
      this.isLoginPressed = false,
      this.isLogin = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isPasswordVisible;
  @override
  @JsonKey()
  final bool isGoogleSignUp;
  @override
  @JsonKey()
  final bool isEmailSignUp;
  @override
  @JsonKey()
  final bool isSignUpSuccess;
  @override
  @JsonKey()
  final bool isLoginPressed;
  @override
  @JsonKey()
  final bool isLogin;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(other.isGoogleSignUp, isGoogleSignUp) ||
                other.isGoogleSignUp == isGoogleSignUp) &&
            (identical(other.isEmailSignUp, isEmailSignUp) ||
                other.isEmailSignUp == isEmailSignUp) &&
            (identical(other.isSignUpSuccess, isSignUpSuccess) ||
                other.isSignUpSuccess == isSignUpSuccess) &&
            (identical(other.isLoginPressed, isLoginPressed) ||
                other.isLoginPressed == isLoginPressed) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      name,
      uid,
      password,
      isPasswordVisible,
      isGoogleSignUp,
      isEmailSignUp,
      isSignUpSuccess,
      isLoginPressed,
      isLogin);

  @override
  String toString() {
    return 'RegisterState(email: $email, name: $name, uid: $uid, password: $password, isPasswordVisible: $isPasswordVisible, isGoogleSignUp: $isGoogleSignUp, isEmailSignUp: $isEmailSignUp, isSignUpSuccess: $isSignUpSuccess, isLoginPressed: $isLoginPressed, isLogin: $isLogin)';
  }
}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) _then) =
      __$RegisterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String email,
      String name,
      String uid,
      String password,
      bool isPasswordVisible,
      bool isGoogleSignUp,
      bool isEmailSignUp,
      bool isSignUpSuccess,
      bool isLoginPressed,
      bool isLogin});
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? uid = null,
    Object? password = null,
    Object? isPasswordVisible = null,
    Object? isGoogleSignUp = null,
    Object? isEmailSignUp = null,
    Object? isSignUpSuccess = null,
    Object? isLoginPressed = null,
    Object? isLogin = null,
  }) {
    return _then(_RegisterState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _self.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordVisible: null == isPasswordVisible
          ? _self.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isGoogleSignUp: null == isGoogleSignUp
          ? _self.isGoogleSignUp
          : isGoogleSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailSignUp: null == isEmailSignUp
          ? _self.isEmailSignUp
          : isEmailSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isSignUpSuccess: null == isSignUpSuccess
          ? _self.isSignUpSuccess
          : isSignUpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginPressed: null == isLoginPressed
          ? _self.isLoginPressed
          : isLoginPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _self.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
