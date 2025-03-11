// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CameraEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CameraEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CameraEvent()';
  }
}

/// @nodoc
class $CameraEventCopyWith<$Res> {
  $CameraEventCopyWith(CameraEvent _, $Res Function(CameraEvent) __);
}

/// @nodoc

class _Initialized implements CameraEvent {
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
    return 'CameraEvent.initialized()';
  }
}

/// @nodoc

class _Captured implements CameraEvent {
  const _Captured();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Captured);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CameraEvent.captured()';
  }
}

/// @nodoc

class _Stopped implements CameraEvent {
  const _Stopped();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Stopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CameraEvent.stopped()';
  }
}

/// @nodoc

class _CameraLensDirectionChanged implements CameraEvent {
  const _CameraLensDirectionChanged();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CameraLensDirectionChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CameraEvent.cameraLensDirectionChanged()';
  }
}

/// @nodoc

class _CameraLensDirectionFailure implements CameraEvent {
  const _CameraLensDirectionFailure();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CameraLensDirectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CameraEvent.cameraLensDirectionFailure()';
  }
}

/// @nodoc

class _OpenGallery implements CameraEvent {
  const _OpenGallery();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OpenGallery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CameraEvent.openGallery()';
  }
}

/// @nodoc
mixin _$CameraState {
  bool get cameraInitial;
  bool get cameraCaptureInProgress;
  bool get cameraCaptureSuccess;
  bool get cameraCaptureFailure;
  bool get cameraFailure;
  XFile? get image;
  CameraLensDirection? get cameraLensDirection;
  bool get cameraLensDirectionFailure;
  bool get openGallery;
  bool get imageSelected;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CameraStateCopyWith<CameraState> get copyWith =>
      _$CameraStateCopyWithImpl<CameraState>(this as CameraState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CameraState &&
            (identical(other.cameraInitial, cameraInitial) ||
                other.cameraInitial == cameraInitial) &&
            (identical(
                    other.cameraCaptureInProgress, cameraCaptureInProgress) ||
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
            (identical(other.cameraLensDirectionFailure,
                    cameraLensDirectionFailure) ||
                other.cameraLensDirectionFailure ==
                    cameraLensDirectionFailure) &&
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
      cameraLensDirectionFailure,
      openGallery,
      imageSelected);

  @override
  String toString() {
    return 'CameraState(cameraInitial: $cameraInitial, cameraCaptureInProgress: $cameraCaptureInProgress, cameraCaptureSuccess: $cameraCaptureSuccess, cameraCaptureFailure: $cameraCaptureFailure, cameraFailure: $cameraFailure, image: $image, cameraLensDirection: $cameraLensDirection, cameraLensDirectionFailure: $cameraLensDirectionFailure, openGallery: $openGallery, imageSelected: $imageSelected)';
  }
}

/// @nodoc
abstract mixin class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) _then) =
      _$CameraStateCopyWithImpl;
  @useResult
  $Res call(
      {bool cameraInitial,
      bool cameraCaptureInProgress,
      bool cameraCaptureSuccess,
      bool cameraCaptureFailure,
      bool cameraFailure,
      XFile? image,
      CameraLensDirection? cameraLensDirection,
      bool cameraLensDirectionFailure,
      bool openGallery,
      bool imageSelected});
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res> implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._self, this._then);

  final CameraState _self;
  final $Res Function(CameraState) _then;

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
    Object? cameraLensDirectionFailure = null,
    Object? openGallery = null,
    Object? imageSelected = null,
  }) {
    return _then(_self.copyWith(
      cameraInitial: null == cameraInitial
          ? _self.cameraInitial
          : cameraInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraCaptureInProgress: null == cameraCaptureInProgress
          ? _self.cameraCaptureInProgress
          : cameraCaptureInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraCaptureSuccess: null == cameraCaptureSuccess
          ? _self.cameraCaptureSuccess
          : cameraCaptureSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraCaptureFailure: null == cameraCaptureFailure
          ? _self.cameraCaptureFailure
          : cameraCaptureFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraFailure: null == cameraFailure
          ? _self.cameraFailure
          : cameraFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      cameraLensDirection: freezed == cameraLensDirection
          ? _self.cameraLensDirection
          : cameraLensDirection // ignore: cast_nullable_to_non_nullable
              as CameraLensDirection?,
      cameraLensDirectionFailure: null == cameraLensDirectionFailure
          ? _self.cameraLensDirectionFailure
          : cameraLensDirectionFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      openGallery: null == openGallery
          ? _self.openGallery
          : openGallery // ignore: cast_nullable_to_non_nullable
              as bool,
      imageSelected: null == imageSelected
          ? _self.imageSelected
          : imageSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _CameraState implements CameraState {
  const _CameraState(
      {this.cameraInitial = false,
      this.cameraCaptureInProgress = false,
      this.cameraCaptureSuccess = false,
      this.cameraCaptureFailure = false,
      this.cameraFailure = false,
      this.image = null,
      this.cameraLensDirection = CameraLensDirection.back,
      this.cameraLensDirectionFailure = false,
      this.openGallery = false,
      this.imageSelected = false});

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
  final bool cameraLensDirectionFailure;
  @override
  @JsonKey()
  final bool openGallery;
  @override
  @JsonKey()
  final bool imageSelected;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CameraStateCopyWith<_CameraState> get copyWith =>
      __$CameraStateCopyWithImpl<_CameraState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CameraState &&
            (identical(other.cameraInitial, cameraInitial) ||
                other.cameraInitial == cameraInitial) &&
            (identical(
                    other.cameraCaptureInProgress, cameraCaptureInProgress) ||
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
            (identical(other.cameraLensDirectionFailure,
                    cameraLensDirectionFailure) ||
                other.cameraLensDirectionFailure ==
                    cameraLensDirectionFailure) &&
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
      cameraLensDirectionFailure,
      openGallery,
      imageSelected);

  @override
  String toString() {
    return 'CameraState(cameraInitial: $cameraInitial, cameraCaptureInProgress: $cameraCaptureInProgress, cameraCaptureSuccess: $cameraCaptureSuccess, cameraCaptureFailure: $cameraCaptureFailure, cameraFailure: $cameraFailure, image: $image, cameraLensDirection: $cameraLensDirection, cameraLensDirectionFailure: $cameraLensDirectionFailure, openGallery: $openGallery, imageSelected: $imageSelected)';
  }
}

/// @nodoc
abstract mixin class _$CameraStateCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$CameraStateCopyWith(
          _CameraState value, $Res Function(_CameraState) _then) =
      __$CameraStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool cameraInitial,
      bool cameraCaptureInProgress,
      bool cameraCaptureSuccess,
      bool cameraCaptureFailure,
      bool cameraFailure,
      XFile? image,
      CameraLensDirection? cameraLensDirection,
      bool cameraLensDirectionFailure,
      bool openGallery,
      bool imageSelected});
}

/// @nodoc
class __$CameraStateCopyWithImpl<$Res> implements _$CameraStateCopyWith<$Res> {
  __$CameraStateCopyWithImpl(this._self, this._then);

  final _CameraState _self;
  final $Res Function(_CameraState) _then;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cameraInitial = null,
    Object? cameraCaptureInProgress = null,
    Object? cameraCaptureSuccess = null,
    Object? cameraCaptureFailure = null,
    Object? cameraFailure = null,
    Object? image = freezed,
    Object? cameraLensDirection = freezed,
    Object? cameraLensDirectionFailure = null,
    Object? openGallery = null,
    Object? imageSelected = null,
  }) {
    return _then(_CameraState(
      cameraInitial: null == cameraInitial
          ? _self.cameraInitial
          : cameraInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraCaptureInProgress: null == cameraCaptureInProgress
          ? _self.cameraCaptureInProgress
          : cameraCaptureInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraCaptureSuccess: null == cameraCaptureSuccess
          ? _self.cameraCaptureSuccess
          : cameraCaptureSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraCaptureFailure: null == cameraCaptureFailure
          ? _self.cameraCaptureFailure
          : cameraCaptureFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraFailure: null == cameraFailure
          ? _self.cameraFailure
          : cameraFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      cameraLensDirection: freezed == cameraLensDirection
          ? _self.cameraLensDirection
          : cameraLensDirection // ignore: cast_nullable_to_non_nullable
              as CameraLensDirection?,
      cameraLensDirectionFailure: null == cameraLensDirectionFailure
          ? _self.cameraLensDirectionFailure
          : cameraLensDirectionFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      openGallery: null == openGallery
          ? _self.openGallery
          : openGallery // ignore: cast_nullable_to_non_nullable
              as bool,
      imageSelected: null == imageSelected
          ? _self.imageSelected
          : imageSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
