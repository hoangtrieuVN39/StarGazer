// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PredictionBloc {
  XFile? get image;
  set image(XFile? value);
  PredictingImageUsecase get predictingImageUsecase;
  set predictingImageUsecase(PredictingImageUsecase value);
  PredictingUsecase get predictingUsecase;
  set predictingUsecase(PredictingUsecase value);
  PredictionToImgUsecase get predictionToImgUsecase;
  set predictionToImgUsecase(PredictionToImgUsecase value);

  /// Create a copy of PredictionBloc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PredictionBlocCopyWith<PredictionBloc> get copyWith =>
      _$PredictionBlocCopyWithImpl<PredictionBloc>(
          this as PredictionBloc, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PredictionBloc &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.predictingImageUsecase, predictingImageUsecase) ||
                other.predictingImageUsecase == predictingImageUsecase) &&
            (identical(other.predictingUsecase, predictingUsecase) ||
                other.predictingUsecase == predictingUsecase) &&
            (identical(other.predictionToImgUsecase, predictionToImgUsecase) ||
                other.predictionToImgUsecase == predictionToImgUsecase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, predictingImageUsecase,
      predictingUsecase, predictionToImgUsecase);

  @override
  String toString() {
    return 'PredictionBloc(image: $image, predictingImageUsecase: $predictingImageUsecase, predictingUsecase: $predictingUsecase, predictionToImgUsecase: $predictionToImgUsecase)';
  }
}

/// @nodoc
abstract mixin class $PredictionBlocCopyWith<$Res> {
  factory $PredictionBlocCopyWith(
          PredictionBloc value, $Res Function(PredictionBloc) _then) =
      _$PredictionBlocCopyWithImpl;
  @useResult
  $Res call(
      {XFile? image,
      PredictingImageUsecase predictingImageUsecase,
      PredictingUsecase predictingUsecase,
      PredictionToImgUsecase predictionToImgUsecase});
}

/// @nodoc
class _$PredictionBlocCopyWithImpl<$Res>
    implements $PredictionBlocCopyWith<$Res> {
  _$PredictionBlocCopyWithImpl(this._self, this._then);

  final PredictionBloc _self;
  final $Res Function(PredictionBloc) _then;

  /// Create a copy of PredictionBloc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? predictingImageUsecase = null,
    Object? predictingUsecase = null,
    Object? predictionToImgUsecase = null,
  }) {
    return _then(PredictionBloc(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      predictingImageUsecase: null == predictingImageUsecase
          ? _self.predictingImageUsecase
          : predictingImageUsecase // ignore: cast_nullable_to_non_nullable
              as PredictingImageUsecase,
      predictingUsecase: null == predictingUsecase
          ? _self.predictingUsecase
          : predictingUsecase // ignore: cast_nullable_to_non_nullable
              as PredictingUsecase,
      predictionToImgUsecase: null == predictionToImgUsecase
          ? _self.predictionToImgUsecase
          : predictionToImgUsecase // ignore: cast_nullable_to_non_nullable
              as PredictionToImgUsecase,
    ));
  }
}

/// @nodoc
mixin _$PredictionEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PredictionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PredictionEvent()';
  }
}

/// @nodoc
class $PredictionEventCopyWith<$Res> {
  $PredictionEventCopyWith(
      PredictionEvent _, $Res Function(PredictionEvent) __);
}

/// @nodoc

class _Initialized implements PredictionEvent {
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
    return 'PredictionEvent.initialized()';
  }
}

/// @nodoc

class _PredictionMade implements PredictionEvent {
  const _PredictionMade();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PredictionMade);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PredictionEvent.predictionMade()';
  }
}

/// @nodoc

class _PredictionDone implements PredictionEvent {
  const _PredictionDone();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PredictionDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PredictionEvent.predictionDone()';
  }
}

/// @nodoc
mixin _$PredictionState {
  XFile? get image;
  XFile? get predictionImage;
  String get prediction;
  List<double> get points;
  bool get predictionInProgress;
  bool get predictionSuccess;
  bool get predictionFailure;
  bool get predictionDone;

  /// Create a copy of PredictionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PredictionStateCopyWith<PredictionState> get copyWith =>
      _$PredictionStateCopyWithImpl<PredictionState>(
          this as PredictionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PredictionState &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.predictionImage, predictionImage) ||
                other.predictionImage == predictionImage) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction) &&
            const DeepCollectionEquality().equals(other.points, points) &&
            (identical(other.predictionInProgress, predictionInProgress) ||
                other.predictionInProgress == predictionInProgress) &&
            (identical(other.predictionSuccess, predictionSuccess) ||
                other.predictionSuccess == predictionSuccess) &&
            (identical(other.predictionFailure, predictionFailure) ||
                other.predictionFailure == predictionFailure) &&
            (identical(other.predictionDone, predictionDone) ||
                other.predictionDone == predictionDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      image,
      predictionImage,
      prediction,
      const DeepCollectionEquality().hash(points),
      predictionInProgress,
      predictionSuccess,
      predictionFailure,
      predictionDone);

  @override
  String toString() {
    return 'PredictionState(image: $image, predictionImage: $predictionImage, prediction: $prediction, points: $points, predictionInProgress: $predictionInProgress, predictionSuccess: $predictionSuccess, predictionFailure: $predictionFailure, predictionDone: $predictionDone)';
  }
}

/// @nodoc
abstract mixin class $PredictionStateCopyWith<$Res> {
  factory $PredictionStateCopyWith(
          PredictionState value, $Res Function(PredictionState) _then) =
      _$PredictionStateCopyWithImpl;
  @useResult
  $Res call(
      {XFile? image,
      XFile? predictionImage,
      String prediction,
      List<double> points,
      bool predictionInProgress,
      bool predictionSuccess,
      bool predictionFailure,
      bool predictionDone});
}

/// @nodoc
class _$PredictionStateCopyWithImpl<$Res>
    implements $PredictionStateCopyWith<$Res> {
  _$PredictionStateCopyWithImpl(this._self, this._then);

  final PredictionState _self;
  final $Res Function(PredictionState) _then;

  /// Create a copy of PredictionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? predictionImage = freezed,
    Object? prediction = null,
    Object? points = null,
    Object? predictionInProgress = null,
    Object? predictionSuccess = null,
    Object? predictionFailure = null,
    Object? predictionDone = null,
  }) {
    return _then(_self.copyWith(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      predictionImage: freezed == predictionImage
          ? _self.predictionImage
          : predictionImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      prediction: null == prediction
          ? _self.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _self.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<double>,
      predictionInProgress: null == predictionInProgress
          ? _self.predictionInProgress
          : predictionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      predictionSuccess: null == predictionSuccess
          ? _self.predictionSuccess
          : predictionSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      predictionFailure: null == predictionFailure
          ? _self.predictionFailure
          : predictionFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      predictionDone: null == predictionDone
          ? _self.predictionDone
          : predictionDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _PredictionState extends PredictionState {
  const _PredictionState(
      {this.image = null,
      this.predictionImage = null,
      this.prediction = '',
      final List<double> points = const [],
      this.predictionInProgress = false,
      this.predictionSuccess = false,
      this.predictionFailure = false,
      this.predictionDone = false})
      : _points = points,
        super._();

  @override
  @JsonKey()
  final XFile? image;
  @override
  @JsonKey()
  final XFile? predictionImage;
  @override
  @JsonKey()
  final String prediction;
  final List<double> _points;
  @override
  @JsonKey()
  List<double> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  @JsonKey()
  final bool predictionInProgress;
  @override
  @JsonKey()
  final bool predictionSuccess;
  @override
  @JsonKey()
  final bool predictionFailure;
  @override
  @JsonKey()
  final bool predictionDone;

  /// Create a copy of PredictionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PredictionStateCopyWith<_PredictionState> get copyWith =>
      __$PredictionStateCopyWithImpl<_PredictionState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PredictionState &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.predictionImage, predictionImage) ||
                other.predictionImage == predictionImage) &&
            (identical(other.prediction, prediction) ||
                other.prediction == prediction) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.predictionInProgress, predictionInProgress) ||
                other.predictionInProgress == predictionInProgress) &&
            (identical(other.predictionSuccess, predictionSuccess) ||
                other.predictionSuccess == predictionSuccess) &&
            (identical(other.predictionFailure, predictionFailure) ||
                other.predictionFailure == predictionFailure) &&
            (identical(other.predictionDone, predictionDone) ||
                other.predictionDone == predictionDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      image,
      predictionImage,
      prediction,
      const DeepCollectionEquality().hash(_points),
      predictionInProgress,
      predictionSuccess,
      predictionFailure,
      predictionDone);

  @override
  String toString() {
    return 'PredictionState(image: $image, predictionImage: $predictionImage, prediction: $prediction, points: $points, predictionInProgress: $predictionInProgress, predictionSuccess: $predictionSuccess, predictionFailure: $predictionFailure, predictionDone: $predictionDone)';
  }
}

/// @nodoc
abstract mixin class _$PredictionStateCopyWith<$Res>
    implements $PredictionStateCopyWith<$Res> {
  factory _$PredictionStateCopyWith(
          _PredictionState value, $Res Function(_PredictionState) _then) =
      __$PredictionStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XFile? image,
      XFile? predictionImage,
      String prediction,
      List<double> points,
      bool predictionInProgress,
      bool predictionSuccess,
      bool predictionFailure,
      bool predictionDone});
}

/// @nodoc
class __$PredictionStateCopyWithImpl<$Res>
    implements _$PredictionStateCopyWith<$Res> {
  __$PredictionStateCopyWithImpl(this._self, this._then);

  final _PredictionState _self;
  final $Res Function(_PredictionState) _then;

  /// Create a copy of PredictionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = freezed,
    Object? predictionImage = freezed,
    Object? prediction = null,
    Object? points = null,
    Object? predictionInProgress = null,
    Object? predictionSuccess = null,
    Object? predictionFailure = null,
    Object? predictionDone = null,
  }) {
    return _then(_PredictionState(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      predictionImage: freezed == predictionImage
          ? _self.predictionImage
          : predictionImage // ignore: cast_nullable_to_non_nullable
              as XFile?,
      prediction: null == prediction
          ? _self.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _self._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<double>,
      predictionInProgress: null == predictionInProgress
          ? _self.predictionInProgress
          : predictionInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      predictionSuccess: null == predictionSuccess
          ? _self.predictionSuccess
          : predictionSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      predictionFailure: null == predictionFailure
          ? _self.predictionFailure
          : predictionFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      predictionDone: null == predictionDone
          ? _self.predictionDone
          : predictionDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
