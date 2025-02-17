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
    required TResult Function() cameraLensDirectionChanged,
    required TResult Function() openGallery,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
    TResult? Function()? cameraLensDirectionChanged,
    TResult? Function()? openGallery,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
    TResult Function()? cameraLensDirectionChanged,
    TResult Function()? openGallery,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_CameraLensDirectionChanged value)
    cameraLensDirectionChanged,
    required TResult Function(_OpenGallery value) openGallery,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult? Function(_OpenGallery value)? openGallery,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult Function(_OpenGallery value)? openGallery,
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
    required TResult Function() cameraLensDirectionChanged,
    required TResult Function() openGallery,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
    TResult? Function()? cameraLensDirectionChanged,
    TResult? Function()? openGallery,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
    TResult Function()? cameraLensDirectionChanged,
    TResult Function()? openGallery,
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
    required TResult Function(_CameraLensDirectionChanged value)
    cameraLensDirectionChanged,
    required TResult Function(_OpenGallery value) openGallery,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult? Function(_OpenGallery value)? openGallery,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult Function(_OpenGallery value)? openGallery,
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
    required TResult Function() cameraLensDirectionChanged,
    required TResult Function() openGallery,
  }) {
    return captured();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
    TResult? Function()? cameraLensDirectionChanged,
    TResult? Function()? openGallery,
  }) {
    return captured?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
    TResult Function()? cameraLensDirectionChanged,
    TResult Function()? openGallery,
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
    required TResult Function(_CameraLensDirectionChanged value)
    cameraLensDirectionChanged,
    required TResult Function(_OpenGallery value) openGallery,
  }) {
    return captured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult? Function(_OpenGallery value)? openGallery,
  }) {
    return captured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult Function(_OpenGallery value)? openGallery,
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
    required TResult Function() cameraLensDirectionChanged,
    required TResult Function() openGallery,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
    TResult? Function()? cameraLensDirectionChanged,
    TResult? Function()? openGallery,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
    TResult Function()? cameraLensDirectionChanged,
    TResult Function()? openGallery,
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
    required TResult Function(_CameraLensDirectionChanged value)
    cameraLensDirectionChanged,
    required TResult Function(_OpenGallery value) openGallery,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult? Function(_OpenGallery value)? openGallery,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult Function(_OpenGallery value)? openGallery,
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
abstract class _$$CameraLensDirectionChangedImplCopyWith<$Res> {
  factory _$$CameraLensDirectionChangedImplCopyWith(
    _$CameraLensDirectionChangedImpl value,
    $Res Function(_$CameraLensDirectionChangedImpl) then,
  ) = __$$CameraLensDirectionChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraLensDirectionChangedImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$CameraLensDirectionChangedImpl>
    implements _$$CameraLensDirectionChangedImplCopyWith<$Res> {
  __$$CameraLensDirectionChangedImplCopyWithImpl(
    _$CameraLensDirectionChangedImpl _value,
    $Res Function(_$CameraLensDirectionChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CameraLensDirectionChangedImpl implements _CameraLensDirectionChanged {
  const _$CameraLensDirectionChangedImpl();

  @override
  String toString() {
    return 'CameraEvent.cameraLensDirectionChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraLensDirectionChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() captured,
    required TResult Function() stopped,
    required TResult Function() cameraLensDirectionChanged,
    required TResult Function() openGallery,
  }) {
    return cameraLensDirectionChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
    TResult? Function()? cameraLensDirectionChanged,
    TResult? Function()? openGallery,
  }) {
    return cameraLensDirectionChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
    TResult Function()? cameraLensDirectionChanged,
    TResult Function()? openGallery,
    required TResult orElse(),
  }) {
    if (cameraLensDirectionChanged != null) {
      return cameraLensDirectionChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_CameraLensDirectionChanged value)
    cameraLensDirectionChanged,
    required TResult Function(_OpenGallery value) openGallery,
  }) {
    return cameraLensDirectionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult? Function(_OpenGallery value)? openGallery,
  }) {
    return cameraLensDirectionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult Function(_OpenGallery value)? openGallery,
    required TResult orElse(),
  }) {
    if (cameraLensDirectionChanged != null) {
      return cameraLensDirectionChanged(this);
    }
    return orElse();
  }
}

abstract class _CameraLensDirectionChanged implements CameraEvent {
  const factory _CameraLensDirectionChanged() =
      _$CameraLensDirectionChangedImpl;
}

/// @nodoc
abstract class _$$OpenGalleryImplCopyWith<$Res> {
  factory _$$OpenGalleryImplCopyWith(
    _$OpenGalleryImpl value,
    $Res Function(_$OpenGalleryImpl) then,
  ) = __$$OpenGalleryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenGalleryImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$OpenGalleryImpl>
    implements _$$OpenGalleryImplCopyWith<$Res> {
  __$$OpenGalleryImplCopyWithImpl(
    _$OpenGalleryImpl _value,
    $Res Function(_$OpenGalleryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CameraEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OpenGalleryImpl implements _OpenGallery {
  const _$OpenGalleryImpl();

  @override
  String toString() {
    return 'CameraEvent.openGallery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenGalleryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() captured,
    required TResult Function() stopped,
    required TResult Function() cameraLensDirectionChanged,
    required TResult Function() openGallery,
  }) {
    return openGallery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? captured,
    TResult? Function()? stopped,
    TResult? Function()? cameraLensDirectionChanged,
    TResult? Function()? openGallery,
  }) {
    return openGallery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? captured,
    TResult Function()? stopped,
    TResult Function()? cameraLensDirectionChanged,
    TResult Function()? openGallery,
    required TResult orElse(),
  }) {
    if (openGallery != null) {
      return openGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Captured value) captured,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_CameraLensDirectionChanged value)
    cameraLensDirectionChanged,
    required TResult Function(_OpenGallery value) openGallery,
  }) {
    return openGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult? Function(_OpenGallery value)? openGallery,
  }) {
    return openGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Captured value)? captured,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_CameraLensDirectionChanged value)?
    cameraLensDirectionChanged,
    TResult Function(_OpenGallery value)? openGallery,
    required TResult orElse(),
  }) {
    if (openGallery != null) {
      return openGallery(this);
    }
    return orElse();
  }
}

abstract class _OpenGallery implements CameraEvent {
  const factory _OpenGallery() = _$OpenGalleryImpl;
}

/// @nodoc
mixin _$CameraState {
  bool get cameraInitial => throw _privateConstructorUsedError;
  bool get cameraCaptureInProgress => throw _privateConstructorUsedError;
  bool get cameraCaptureSuccess => throw _privateConstructorUsedError;
  bool get cameraCaptureFailure => throw _privateConstructorUsedError;
  bool get cameraFailure => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  CameraLensDirection? get cameraLensDirection =>
      throw _privateConstructorUsedError;
  bool get openGallery => throw _privateConstructorUsedError;
  bool get imageSelected => throw _privateConstructorUsedError;

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
    bool cameraInitial,
    bool cameraCaptureInProgress,
    bool cameraCaptureSuccess,
    bool cameraCaptureFailure,
    bool cameraFailure,
    XFile? image,
    CameraLensDirection? cameraLensDirection,
    bool openGallery,
    bool imageSelected,
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
    Object? cameraInitial = null,
    Object? cameraCaptureInProgress = null,
    Object? cameraCaptureSuccess = null,
    Object? cameraCaptureFailure = null,
    Object? cameraFailure = null,
    Object? image = freezed,
    Object? cameraLensDirection = freezed,
    Object? openGallery = null,
    Object? imageSelected = null,
  }) {
    return _then(
      _value.copyWith(
            cameraInitial:
                null == cameraInitial
                    ? _value.cameraInitial
                    : cameraInitial // ignore: cast_nullable_to_non_nullable
                        as bool,
            cameraCaptureInProgress:
                null == cameraCaptureInProgress
                    ? _value.cameraCaptureInProgress
                    : cameraCaptureInProgress // ignore: cast_nullable_to_non_nullable
                        as bool,
            cameraCaptureSuccess:
                null == cameraCaptureSuccess
                    ? _value.cameraCaptureSuccess
                    : cameraCaptureSuccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            cameraCaptureFailure:
                null == cameraCaptureFailure
                    ? _value.cameraCaptureFailure
                    : cameraCaptureFailure // ignore: cast_nullable_to_non_nullable
                        as bool,
            cameraFailure:
                null == cameraFailure
                    ? _value.cameraFailure
                    : cameraFailure // ignore: cast_nullable_to_non_nullable
                        as bool,
            image:
                freezed == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as XFile?,
            cameraLensDirection:
                freezed == cameraLensDirection
                    ? _value.cameraLensDirection
                    : cameraLensDirection // ignore: cast_nullable_to_non_nullable
                        as CameraLensDirection?,
            openGallery:
                null == openGallery
                    ? _value.openGallery
                    : openGallery // ignore: cast_nullable_to_non_nullable
                        as bool,
            imageSelected:
                null == imageSelected
                    ? _value.imageSelected
                    : imageSelected // ignore: cast_nullable_to_non_nullable
                        as bool,
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
    bool cameraInitial,
    bool cameraCaptureInProgress,
    bool cameraCaptureSuccess,
    bool cameraCaptureFailure,
    bool cameraFailure,
    XFile? image,
    CameraLensDirection? cameraLensDirection,
    bool openGallery,
    bool imageSelected,
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
    Object? cameraInitial = null,
    Object? cameraCaptureInProgress = null,
    Object? cameraCaptureSuccess = null,
    Object? cameraCaptureFailure = null,
    Object? cameraFailure = null,
    Object? image = freezed,
    Object? cameraLensDirection = freezed,
    Object? openGallery = null,
    Object? imageSelected = null,
  }) {
    return _then(
      _$CameraStateImpl(
        cameraInitial:
            null == cameraInitial
                ? _value.cameraInitial
                : cameraInitial // ignore: cast_nullable_to_non_nullable
                    as bool,
        cameraCaptureInProgress:
            null == cameraCaptureInProgress
                ? _value.cameraCaptureInProgress
                : cameraCaptureInProgress // ignore: cast_nullable_to_non_nullable
                    as bool,
        cameraCaptureSuccess:
            null == cameraCaptureSuccess
                ? _value.cameraCaptureSuccess
                : cameraCaptureSuccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        cameraCaptureFailure:
            null == cameraCaptureFailure
                ? _value.cameraCaptureFailure
                : cameraCaptureFailure // ignore: cast_nullable_to_non_nullable
                    as bool,
        cameraFailure:
            null == cameraFailure
                ? _value.cameraFailure
                : cameraFailure // ignore: cast_nullable_to_non_nullable
                    as bool,
        image:
            freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as XFile?,
        cameraLensDirection:
            freezed == cameraLensDirection
                ? _value.cameraLensDirection
                : cameraLensDirection // ignore: cast_nullable_to_non_nullable
                    as CameraLensDirection?,
        openGallery:
            null == openGallery
                ? _value.openGallery
                : openGallery // ignore: cast_nullable_to_non_nullable
                    as bool,
        imageSelected:
            null == imageSelected
                ? _value.imageSelected
                : imageSelected // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$CameraStateImpl implements _CameraState {
  const _$CameraStateImpl({
    this.cameraInitial = false,
    this.cameraCaptureInProgress = false,
    this.cameraCaptureSuccess = false,
    this.cameraCaptureFailure = false,
    this.cameraFailure = false,
    this.image = null,
    this.cameraLensDirection = CameraLensDirection.back,
    this.openGallery = false,
    this.imageSelected = false,
  });

  @override
  @JsonKey()
  final bool cameraInitial;
  @override
  @JsonKey()
  final bool cameraCaptureInProgress;
  @override
  @JsonKey()
  final bool cameraCaptureSuccess;
  @override
  @JsonKey()
  final bool cameraCaptureFailure;
  @override
  @JsonKey()
  final bool cameraFailure;
  @override
  @JsonKey()
  final XFile? image;
  @override
  @JsonKey()
  final CameraLensDirection? cameraLensDirection;
  @override
  @JsonKey()
  final bool openGallery;
  @override
  @JsonKey()
  final bool imageSelected;

  @override
  String toString() {
    return 'CameraState(cameraInitial: $cameraInitial, cameraCaptureInProgress: $cameraCaptureInProgress, cameraCaptureSuccess: $cameraCaptureSuccess, cameraCaptureFailure: $cameraCaptureFailure, cameraFailure: $cameraFailure, image: $image, cameraLensDirection: $cameraLensDirection, openGallery: $openGallery, imageSelected: $imageSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraStateImpl &&
            (identical(other.cameraInitial, cameraInitial) ||
                other.cameraInitial == cameraInitial) &&
            (identical(
                  other.cameraCaptureInProgress,
                  cameraCaptureInProgress,
                ) ||
                other.cameraCaptureInProgress == cameraCaptureInProgress) &&
            (identical(other.cameraCaptureSuccess, cameraCaptureSuccess) ||
                other.cameraCaptureSuccess == cameraCaptureSuccess) &&
            (identical(other.cameraCaptureFailure, cameraCaptureFailure) ||
                other.cameraCaptureFailure == cameraCaptureFailure) &&
            (identical(other.cameraFailure, cameraFailure) ||
                other.cameraFailure == cameraFailure) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.cameraLensDirection, cameraLensDirection) ||
                other.cameraLensDirection == cameraLensDirection) &&
            (identical(other.openGallery, openGallery) ||
                other.openGallery == openGallery) &&
            (identical(other.imageSelected, imageSelected) ||
                other.imageSelected == imageSelected));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    cameraInitial,
    cameraCaptureInProgress,
    cameraCaptureSuccess,
    cameraCaptureFailure,
    cameraFailure,
    image,
    cameraLensDirection,
    openGallery,
    imageSelected,
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
    final bool cameraInitial,
    final bool cameraCaptureInProgress,
    final bool cameraCaptureSuccess,
    final bool cameraCaptureFailure,
    final bool cameraFailure,
    final XFile? image,
    final CameraLensDirection? cameraLensDirection,
    final bool openGallery,
    final bool imageSelected,
  }) = _$CameraStateImpl;

  @override
  bool get cameraInitial;
  @override
  bool get cameraCaptureInProgress;
  @override
  bool get cameraCaptureSuccess;
  @override
  bool get cameraCaptureFailure;
  @override
  bool get cameraFailure;
  @override
  XFile? get image;
  @override
  CameraLensDirection? get cameraLensDirection;
  @override
  bool get openGallery;
  @override
  bool get imageSelected;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraStateImplCopyWith<_$CameraStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
