// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexChanged,
    required TResult Function() initialized,
    required TResult Function(User user) userLoaded,
    required TResult Function(XFile? image) imageCaptured,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
    TResult? Function()? initialized,
    TResult? Function(User user)? userLoaded,
    TResult? Function(XFile? image)? imageCaptured,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    TResult Function()? initialized,
    TResult Function(User user)? userLoaded,
    TResult Function(XFile? image)? imageCaptured,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_ImageCaptured value) imageCaptured,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_ImageCaptured value)? imageCaptured,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IndexChangedImplCopyWith<$Res> {
  factory _$$IndexChangedImplCopyWith(
    _$IndexChangedImpl value,
    $Res Function(_$IndexChangedImpl) then,
  ) = __$$IndexChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$IndexChangedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$IndexChangedImpl>
    implements _$$IndexChangedImplCopyWith<$Res> {
  __$$IndexChangedImplCopyWithImpl(
    _$IndexChangedImpl _value,
    $Res Function(_$IndexChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$IndexChangedImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$IndexChangedImpl implements _IndexChanged {
  const _$IndexChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.indexChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndexChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IndexChangedImplCopyWith<_$IndexChangedImpl> get copyWith =>
      __$$IndexChangedImplCopyWithImpl<_$IndexChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexChanged,
    required TResult Function() initialized,
    required TResult Function(User user) userLoaded,
    required TResult Function(XFile? image) imageCaptured,
  }) {
    return indexChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
    TResult? Function()? initialized,
    TResult? Function(User user)? userLoaded,
    TResult? Function(XFile? image)? imageCaptured,
  }) {
    return indexChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    TResult Function()? initialized,
    TResult Function(User user)? userLoaded,
    TResult Function(XFile? image)? imageCaptured,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_ImageCaptured value) imageCaptured,
  }) {
    return indexChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_ImageCaptured value)? imageCaptured,
  }) {
    return indexChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (indexChanged != null) {
      return indexChanged(this);
    }
    return orElse();
  }
}

abstract class _IndexChanged implements HomeEvent {
  const factory _IndexChanged(final int index) = _$IndexChangedImpl;

  int get index;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IndexChangedImplCopyWith<_$IndexChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
    _$InitializedImpl value,
    $Res Function(_$InitializedImpl) then,
  ) = __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'HomeEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexChanged,
    required TResult Function() initialized,
    required TResult Function(User user) userLoaded,
    required TResult Function(XFile? image) imageCaptured,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
    TResult? Function()? initialized,
    TResult? Function(User user)? userLoaded,
    TResult? Function(XFile? image)? imageCaptured,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    TResult Function()? initialized,
    TResult Function(User user)? userLoaded,
    TResult Function(XFile? image)? imageCaptured,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_ImageCaptured value) imageCaptured,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_ImageCaptured value)? imageCaptured,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements HomeEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$UserLoadedImplCopyWith<$Res> {
  factory _$$UserLoadedImplCopyWith(
    _$UserLoadedImpl value,
    $Res Function(_$UserLoadedImpl) then,
  ) = __$$UserLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserLoadedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UserLoadedImpl>
    implements _$$UserLoadedImplCopyWith<$Res> {
  __$$UserLoadedImplCopyWithImpl(
    _$UserLoadedImpl _value,
    $Res Function(_$UserLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$UserLoadedImpl(
        null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                as User,
      ),
    );
  }
}

/// @nodoc

class _$UserLoadedImpl implements _UserLoaded {
  const _$UserLoadedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'HomeEvent.userLoaded(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      __$$UserLoadedImplCopyWithImpl<_$UserLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexChanged,
    required TResult Function() initialized,
    required TResult Function(User user) userLoaded,
    required TResult Function(XFile? image) imageCaptured,
  }) {
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
    TResult? Function()? initialized,
    TResult? Function(User user)? userLoaded,
    TResult? Function(XFile? image)? imageCaptured,
  }) {
    return userLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    TResult Function()? initialized,
    TResult Function(User user)? userLoaded,
    TResult Function(XFile? image)? imageCaptured,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_ImageCaptured value) imageCaptured,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_ImageCaptured value)? imageCaptured,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class _UserLoaded implements HomeEvent {
  const factory _UserLoaded(final User user) = _$UserLoadedImpl;

  User get user;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageCapturedImplCopyWith<$Res> {
  factory _$$ImageCapturedImplCopyWith(
    _$ImageCapturedImpl value,
    $Res Function(_$ImageCapturedImpl) then,
  ) = __$$ImageCapturedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? image});
}

/// @nodoc
class __$$ImageCapturedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ImageCapturedImpl>
    implements _$$ImageCapturedImplCopyWith<$Res> {
  __$$ImageCapturedImplCopyWithImpl(
    _$ImageCapturedImpl _value,
    $Res Function(_$ImageCapturedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? image = freezed}) {
    return _then(
      _$ImageCapturedImpl(
        freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                as XFile?,
      ),
    );
  }
}

/// @nodoc

class _$ImageCapturedImpl implements _ImageCaptured {
  const _$ImageCapturedImpl(this.image);

  @override
  final XFile? image;

  @override
  String toString() {
    return 'HomeEvent.imageCaptured(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageCapturedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageCapturedImplCopyWith<_$ImageCapturedImpl> get copyWith =>
      __$$ImageCapturedImplCopyWithImpl<_$ImageCapturedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) indexChanged,
    required TResult Function() initialized,
    required TResult Function(User user) userLoaded,
    required TResult Function(XFile? image) imageCaptured,
  }) {
    return imageCaptured(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? indexChanged,
    TResult? Function()? initialized,
    TResult? Function(User user)? userLoaded,
    TResult? Function(XFile? image)? imageCaptured,
  }) {
    return imageCaptured?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? indexChanged,
    TResult Function()? initialized,
    TResult Function(User user)? userLoaded,
    TResult Function(XFile? image)? imageCaptured,
    required TResult orElse(),
  }) {
    if (imageCaptured != null) {
      return imageCaptured(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IndexChanged value) indexChanged,
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_ImageCaptured value) imageCaptured,
  }) {
    return imageCaptured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IndexChanged value)? indexChanged,
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_ImageCaptured value)? imageCaptured,
  }) {
    return imageCaptured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IndexChanged value)? indexChanged,
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (imageCaptured != null) {
      return imageCaptured(this);
    }
    return orElse();
  }
}

abstract class _ImageCaptured implements HomeEvent {
  const factory _ImageCaptured(final XFile? image) = _$ImageCapturedImpl;

  XFile? get image;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageCapturedImplCopyWith<_$ImageCapturedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  int get index => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({int index, User? user, XFile? image});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? user = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _value.copyWith(
            index:
                null == index
                    ? _value.index
                    : index // ignore: cast_nullable_to_non_nullable
                        as int,
            user:
                freezed == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as User?,
            image:
                freezed == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as XFile?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, User? user, XFile? image});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? user = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _$HomeStateImpl(
        index:
            null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                    as int,
        user:
            freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as User?,
        image:
            freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as XFile?,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({this.index = 1, this.user = null, this.image = null});

  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final User? user;
  @override
  @JsonKey()
  final XFile? image;

  @override
  String toString() {
    return 'HomeState(index: $index, user: $user, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, user, image);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final int index,
    final User? user,
    final XFile? image,
  }) = _$HomeStateImpl;

  @override
  int get index;
  @override
  User? get user;
  @override
  XFile? get image;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
