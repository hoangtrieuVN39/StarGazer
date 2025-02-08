// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CameraEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() captured,
    required TResult Function() stopped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Stopped value) stopped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEventCopyWith<$Res> {
  factory $CameraEventCopyWith(
    CameraEvent value,
    $Res Function(CameraEvent) then,
  ) = _$CameraEventCopyWithImpl<$Res, CameraEvent>;
}

/// @nodoc
class _$CameraEventCopyWithImpl<$Res, $Val extends CameraEvent>
    implements $CameraEventCopyWith<$Res> {
  _$CameraEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraEvent
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$CameraEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'CameraEvent.initialized()';
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
    required TResult Function() initialized,
    required TResult Function() captured,
    required TResult Function() stopped,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Stopped value) stopped,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CameraEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$CapturedImplCopyWith<$Res> {
  factory _$$CapturedImplCopyWith(
    _$CapturedImpl value,
    $Res Function(_$CapturedImpl) then,
  ) = __$$CapturedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CapturedImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$CapturedImpl>
    implements _$$CapturedImplCopyWith<$Res> {
  __$$CapturedImplCopyWithImpl(
    _$CapturedImpl _value,
    $Res Function(_$CapturedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CapturedImpl implements _Captured {
  const _$CapturedImpl();

  @override
  String toString() {
    return 'CameraEvent.captured()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CapturedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() captured,
    required TResult Function() stopped,
  }) {
    return captured();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
  }) {
    return captured?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (captured != null) {
      return captured();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Stopped value) stopped,
  }) {
    return captured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
  }) {
    return captured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    required TResult orElse(),
  }) {
    if (captured != null) {
      return captured(this);
    }
    return orElse();
  }
}

abstract class _Captured implements CameraEvent {
  const factory _Captured() = _$CapturedImpl;
}

/// @nodoc
abstract class _$$StoppedImplCopyWith<$Res> {
  factory _$$StoppedImplCopyWith(
    _$StoppedImpl value,
    $Res Function(_$StoppedImpl) then,
  ) = __$$StoppedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoppedImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$StoppedImpl>
    implements _$$StoppedImplCopyWith<$Res> {
  __$$StoppedImplCopyWithImpl(
    _$StoppedImpl _value,
    $Res Function(_$StoppedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StoppedImpl implements _Stopped {
  const _$StoppedImpl();

  @override
  String toString() {
    return 'CameraEvent.stopped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoppedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() captured,
    required TResult Function() stopped,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Stopped value) stopped,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _Stopped implements CameraEvent {
  const factory _Stopped() = _$StoppedImpl;
}

/// @nodoc
mixin _$CameraState {
  bool get CameraInitial => throw _privateConstructorUsedError;
  bool get CameraReady => throw _privateConstructorUsedError;
  bool get CameraCaptureInProgress => throw _privateConstructorUsedError;
  bool get CameraCaptureSuccess => throw _privateConstructorUsedError;
  bool get CameraCaptureFailure => throw _privateConstructorUsedError;
  bool get CameraFailure => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
    CameraState value,
    $Res Function(CameraState) then,
  ) = _$CameraStateCopyWithImpl<$Res, CameraState>;
  @useResult
  $Res call({
    bool CameraInitial,
    bool CameraReady,
    bool CameraCaptureInProgress,
    bool CameraCaptureSuccess,
    bool CameraCaptureFailure,
    bool CameraFailure,
    XFile? image,
  });
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CameraInitial = null,
    Object? CameraReady = null,
    Object? CameraCaptureInProgress = null,
    Object? CameraCaptureSuccess = null,
    Object? CameraCaptureFailure = null,
    Object? CameraFailure = null,
    Object? image = freezed,
  }) {
    return _then(
      _value.copyWith(
            CameraInitial:
                null == CameraInitial
                    ? _value.CameraInitial
                    : CameraInitial // ignore: cast_nullable_to_non_nullable
                        as bool,
            CameraReady:
                null == CameraReady
                    ? _value.CameraReady
                    : CameraReady // ignore: cast_nullable_to_non_nullable
                        as bool,
            CameraCaptureInProgress:
                null == CameraCaptureInProgress
                    ? _value.CameraCaptureInProgress
                    : CameraCaptureInProgress // ignore: cast_nullable_to_non_nullable
                        as bool,
            CameraCaptureSuccess:
                null == CameraCaptureSuccess
                    ? _value.CameraCaptureSuccess
                    : CameraCaptureSuccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            CameraCaptureFailure:
                null == CameraCaptureFailure
                    ? _value.CameraCaptureFailure
                    : CameraCaptureFailure // ignore: cast_nullable_to_non_nullable
                        as bool,
            CameraFailure:
                null == CameraFailure
                    ? _value.CameraFailure
                    : CameraFailure // ignore: cast_nullable_to_non_nullable
                        as bool,
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
abstract class _$$CameraStateImplCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$CameraStateImplCopyWith(
    _$CameraStateImpl value,
    $Res Function(_$CameraStateImpl) then,
  ) = __$$CameraStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool CameraInitial,
    bool CameraReady,
    bool CameraCaptureInProgress,
    bool CameraCaptureSuccess,
    bool CameraCaptureFailure,
    bool CameraFailure,
    XFile? image,
  });
}

/// @nodoc
class __$$CameraStateImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraStateImpl>
    implements _$$CameraStateImplCopyWith<$Res> {
  __$$CameraStateImplCopyWithImpl(
    _$CameraStateImpl _value,
    $Res Function(_$CameraStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CameraInitial = null,
    Object? CameraReady = null,
    Object? CameraCaptureInProgress = null,
    Object? CameraCaptureSuccess = null,
    Object? CameraCaptureFailure = null,
    Object? CameraFailure = null,
    Object? image = freezed,
  }) {
    return _then(
      _$CameraStateImpl(
        CameraInitial:
            null == CameraInitial
                ? _value.CameraInitial
                : CameraInitial // ignore: cast_nullable_to_non_nullable
                    as bool,
        CameraReady:
            null == CameraReady
                ? _value.CameraReady
                : CameraReady // ignore: cast_nullable_to_non_nullable
                    as bool,
        CameraCaptureInProgress:
            null == CameraCaptureInProgress
                ? _value.CameraCaptureInProgress
                : CameraCaptureInProgress // ignore: cast_nullable_to_non_nullable
                    as bool,
        CameraCaptureSuccess:
            null == CameraCaptureSuccess
                ? _value.CameraCaptureSuccess
                : CameraCaptureSuccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        CameraCaptureFailure:
            null == CameraCaptureFailure
                ? _value.CameraCaptureFailure
                : CameraCaptureFailure // ignore: cast_nullable_to_non_nullable
                    as bool,
        CameraFailure:
            null == CameraFailure
                ? _value.CameraFailure
                : CameraFailure // ignore: cast_nullable_to_non_nullable
                    as bool,
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

class _$CameraStateImpl implements _CameraState {
  const _$CameraStateImpl({
    this.CameraInitial = false,
    this.CameraReady = false,
    this.CameraCaptureInProgress = false,
    this.CameraCaptureSuccess = false,
    this.CameraCaptureFailure = false,
    this.CameraFailure = false,
    this.image = null,
  });

  @override
  @JsonKey()
  final bool CameraInitial;
  @override
  @JsonKey()
  final bool CameraReady;
  @override
  @JsonKey()
  final bool CameraCaptureInProgress;
  @override
  @JsonKey()
  final bool CameraCaptureSuccess;
  @override
  @JsonKey()
  final bool CameraCaptureFailure;
  @override
  @JsonKey()
  final bool CameraFailure;
  @override
  @JsonKey()
  final XFile? image;

  @override
  String toString() {
    return 'CameraState(CameraInitial: $CameraInitial, CameraReady: $CameraReady, CameraCaptureInProgress: $CameraCaptureInProgress, CameraCaptureSuccess: $CameraCaptureSuccess, CameraCaptureFailure: $CameraCaptureFailure, CameraFailure: $CameraFailure, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraStateImpl &&
            (identical(other.CameraInitial, CameraInitial) ||
                other.CameraInitial == CameraInitial) &&
            (identical(other.CameraReady, CameraReady) ||
                other.CameraReady == CameraReady) &&
            (identical(
                  other.CameraCaptureInProgress,
                  CameraCaptureInProgress,
                ) ||
                other.CameraCaptureInProgress == CameraCaptureInProgress) &&
            (identical(other.CameraCaptureSuccess, CameraCaptureSuccess) ||
                other.CameraCaptureSuccess == CameraCaptureSuccess) &&
            (identical(other.CameraCaptureFailure, CameraCaptureFailure) ||
                other.CameraCaptureFailure == CameraCaptureFailure) &&
            (identical(other.CameraFailure, CameraFailure) ||
                other.CameraFailure == CameraFailure) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    CameraInitial,
    CameraReady,
    CameraCaptureInProgress,
    CameraCaptureSuccess,
    CameraCaptureFailure,
    CameraFailure,
    image,
  );

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraStateImplCopyWith<_$CameraStateImpl> get copyWith =>
      __$$CameraStateImplCopyWithImpl<_$CameraStateImpl>(this, _$identity);
}

abstract class _CameraState implements CameraState {
  const factory _CameraState({
    final bool CameraInitial,
    final bool CameraReady,
    final bool CameraCaptureInProgress,
    final bool CameraCaptureSuccess,
    final bool CameraCaptureFailure,
    final bool CameraFailure,
    final XFile? image,
  }) = _$CameraStateImpl;

  @override
  bool get CameraInitial;
  @override
  bool get CameraReady;
  @override
  bool get CameraCaptureInProgress;
  @override
  bool get CameraCaptureSuccess;
  @override
  bool get CameraCaptureFailure;
  @override
  bool get CameraFailure;
  @override
  XFile? get image;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraStateImplCopyWith<_$CameraStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
