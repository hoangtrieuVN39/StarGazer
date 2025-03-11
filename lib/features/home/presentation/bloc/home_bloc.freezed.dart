// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent()';
  }
}

/// @nodoc
class $HomeEventCopyWith<$Res> {
  $HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}

/// @nodoc

class _IndexChanged implements HomeEvent {
  const _IndexChanged(this.index);

  final int index;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IndexChangedCopyWith<_IndexChanged> get copyWith =>
      __$IndexChangedCopyWithImpl<_IndexChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IndexChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'HomeEvent.indexChanged(index: $index)';
  }
}

/// @nodoc
abstract mixin class _$IndexChangedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$IndexChangedCopyWith(
          _IndexChanged value, $Res Function(_IndexChanged) _then) =
      __$IndexChangedCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$IndexChangedCopyWithImpl<$Res>
    implements _$IndexChangedCopyWith<$Res> {
  __$IndexChangedCopyWithImpl(this._self, this._then);

  final _IndexChanged _self;
  final $Res Function(_IndexChanged) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(_IndexChanged(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _Initialized implements HomeEvent {
  const _Initialized();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent.initialized()';
  }
}

/// @nodoc

class _UserLoaded implements HomeEvent {
  const _UserLoaded(this.user);

  final User user;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserLoadedCopyWith<_UserLoaded> get copyWith =>
      __$UserLoadedCopyWithImpl<_UserLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLoaded &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'HomeEvent.userLoaded(user: $user)';
  }
}

/// @nodoc
abstract mixin class _$UserLoadedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$UserLoadedCopyWith(
          _UserLoaded value, $Res Function(_UserLoaded) _then) =
      __$UserLoadedCopyWithImpl;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$UserLoadedCopyWithImpl<$Res> implements _$UserLoadedCopyWith<$Res> {
  __$UserLoadedCopyWithImpl(this._self, this._then);

  final _UserLoaded _self;
  final $Res Function(_UserLoaded) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(_UserLoaded(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _ImageCaptured implements HomeEvent {
  const _ImageCaptured(this.image);

  final XFile? image;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ImageCapturedCopyWith<_ImageCaptured> get copyWith =>
      __$ImageCapturedCopyWithImpl<_ImageCaptured>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageCaptured &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @override
  String toString() {
    return 'HomeEvent.imageCaptured(image: $image)';
  }
}

/// @nodoc
abstract mixin class _$ImageCapturedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$ImageCapturedCopyWith(
          _ImageCaptured value, $Res Function(_ImageCaptured) _then) =
      __$ImageCapturedCopyWithImpl;
  @useResult
  $Res call({XFile? image});
}

/// @nodoc
class __$ImageCapturedCopyWithImpl<$Res>
    implements _$ImageCapturedCopyWith<$Res> {
  __$ImageCapturedCopyWithImpl(this._self, this._then);

  final _ImageCaptured _self;
  final $Res Function(_ImageCaptured) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_ImageCaptured(
      freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc
mixin _$HomeState {
  int get index;
  User? get user;
  XFile? get image;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, user, image);

  @override
  String toString() {
    return 'HomeState(index: $index, user: $user, image: $image)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call({int index, User? user, XFile? image});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? user = freezed,
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _HomeState implements HomeState {
  const _HomeState({this.index = 1, this.user = null, this.image = null});

  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final User? user;
  @override
  @JsonKey()
  final XFile? image;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, user, image);

  @override
  String toString() {
    return 'HomeState(index: $index, user: $user, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call({int index, User? user, XFile? image});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
    Object? user = freezed,
    Object? image = freezed,
  }) {
    return _then(_HomeState(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

// dart format on
