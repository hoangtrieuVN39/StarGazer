// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PredictionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() predictionMade,
    required TResult Function() predictionDone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? predictionMade,
    TResult? Function()? predictionDone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? predictionMade,
    TResult Function()? predictionDone,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PredictionMade value) predictionMade,
    required TResult Function(_PredictionDone value) predictionDone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PredictionMade value)? predictionMade,
    TResult? Function(_PredictionDone value)? predictionDone,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PredictionMade value)? predictionMade,
    TResult Function(_PredictionDone value)? predictionDone,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionEventCopyWith<$Res> {
  factory $PredictionEventCopyWith(
    PredictionEvent value,
    $Res Function(PredictionEvent) then,
  ) = _$PredictionEventCopyWithImpl<$Res, PredictionEvent>;
}

/// @nodoc
class _$PredictionEventCopyWithImpl<$Res, $Val extends PredictionEvent>
    implements $PredictionEventCopyWith<$Res> {
  _$PredictionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PredictionEvent
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
    extends _$PredictionEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
    _$InitializedImpl _value,
    $Res Function(_$InitializedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PredictionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'PredictionEvent.initialized()';
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
    required TResult Function() predictionMade,
    required TResult Function() predictionDone,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? predictionMade,
    TResult? Function()? predictionDone,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? predictionMade,
    TResult Function()? predictionDone,
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
    required TResult Function(_PredictionMade value) predictionMade,
    required TResult Function(_PredictionDone value) predictionDone,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PredictionMade value)? predictionMade,
    TResult? Function(_PredictionDone value)? predictionDone,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PredictionMade value)? predictionMade,
    TResult Function(_PredictionDone value)? predictionDone,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements PredictionEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$PredictionMadeImplCopyWith<$Res> {
  factory _$$PredictionMadeImplCopyWith(
    _$PredictionMadeImpl value,
    $Res Function(_$PredictionMadeImpl) then,
  ) = __$$PredictionMadeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PredictionMadeImplCopyWithImpl<$Res>
    extends _$PredictionEventCopyWithImpl<$Res, _$PredictionMadeImpl>
    implements _$$PredictionMadeImplCopyWith<$Res> {
  __$$PredictionMadeImplCopyWithImpl(
    _$PredictionMadeImpl _value,
    $Res Function(_$PredictionMadeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PredictionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PredictionMadeImpl implements _PredictionMade {
  const _$PredictionMadeImpl();

  @override
  String toString() {
    return 'PredictionEvent.predictionMade()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PredictionMadeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() predictionMade,
    required TResult Function() predictionDone,
  }) {
    return predictionMade();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? predictionMade,
    TResult? Function()? predictionDone,
  }) {
    return predictionMade?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? predictionMade,
    TResult Function()? predictionDone,
    required TResult orElse(),
  }) {
    if (predictionMade != null) {
      return predictionMade();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PredictionMade value) predictionMade,
    required TResult Function(_PredictionDone value) predictionDone,
  }) {
    return predictionMade(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PredictionMade value)? predictionMade,
    TResult? Function(_PredictionDone value)? predictionDone,
  }) {
    return predictionMade?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PredictionMade value)? predictionMade,
    TResult Function(_PredictionDone value)? predictionDone,
    required TResult orElse(),
  }) {
    if (predictionMade != null) {
      return predictionMade(this);
    }
    return orElse();
  }
}

abstract class _PredictionMade implements PredictionEvent {
  const factory _PredictionMade() = _$PredictionMadeImpl;
}

/// @nodoc
abstract class _$$PredictionDoneImplCopyWith<$Res> {
  factory _$$PredictionDoneImplCopyWith(
    _$PredictionDoneImpl value,
    $Res Function(_$PredictionDoneImpl) then,
  ) = __$$PredictionDoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PredictionDoneImplCopyWithImpl<$Res>
    extends _$PredictionEventCopyWithImpl<$Res, _$PredictionDoneImpl>
    implements _$$PredictionDoneImplCopyWith<$Res> {
  __$$PredictionDoneImplCopyWithImpl(
    _$PredictionDoneImpl _value,
    $Res Function(_$PredictionDoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PredictionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PredictionDoneImpl implements _PredictionDone {
  const _$PredictionDoneImpl();

  @override
  String toString() {
    return 'PredictionEvent.predictionDone()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PredictionDoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() predictionMade,
    required TResult Function() predictionDone,
  }) {
    return predictionDone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? predictionMade,
    TResult? Function()? predictionDone,
  }) {
    return predictionDone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? predictionMade,
    TResult Function()? predictionDone,
    required TResult orElse(),
  }) {
    if (predictionDone != null) {
      return predictionDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PredictionMade value) predictionMade,
    required TResult Function(_PredictionDone value) predictionDone,
  }) {
    return predictionDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PredictionMade value)? predictionMade,
    TResult? Function(_PredictionDone value)? predictionDone,
  }) {
    return predictionDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PredictionMade value)? predictionMade,
    TResult Function(_PredictionDone value)? predictionDone,
    required TResult orElse(),
  }) {
    if (predictionDone != null) {
      return predictionDone(this);
    }
    return orElse();
  }
}

abstract class _PredictionDone implements PredictionEvent {
  const factory _PredictionDone() = _$PredictionDoneImpl;
}

/// @nodoc
mixin _$PredictionState {
  XFile? get image => throw _privateConstructorUsedError;
  XFile? get predictionImage => throw _privateConstructorUsedError;
  String get prediction => throw _privateConstructorUsedError;
  List<double> get points => throw _privateConstructorUsedError;
  bool get predictionInProgress => throw _privateConstructorUsedError;
  bool get predictionSuccess => throw _privateConstructorUsedError;
  bool get predictionFailure => throw _privateConstructorUsedError;
  bool get predictionDone => throw _privateConstructorUsedError;

  /// Create a copy of PredictionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PredictionStateCopyWith<PredictionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionStateCopyWith<$Res> {
  factory $PredictionStateCopyWith(
    PredictionState value,
    $Res Function(PredictionState) then,
  ) = _$PredictionStateCopyWithImpl<$Res, PredictionState>;
  @useResult
  $Res call({
    XFile? image,
    XFile? predictionImage,
    String prediction,
    List<double> points,
    bool predictionInProgress,
    bool predictionSuccess,
    bool predictionFailure,
    bool predictionDone,
  });
}

/// @nodoc
class _$PredictionStateCopyWithImpl<$Res, $Val extends PredictionState>
    implements $PredictionStateCopyWith<$Res> {
  _$PredictionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(
      _value.copyWith(
            image:
                freezed == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as XFile?,
            predictionImage:
                freezed == predictionImage
                    ? _value.predictionImage
                    : predictionImage // ignore: cast_nullable_to_non_nullable
                        as XFile?,
            prediction:
                null == prediction
                    ? _value.prediction
                    : prediction // ignore: cast_nullable_to_non_nullable
                        as String,
            points:
                null == points
                    ? _value.points
                    : points // ignore: cast_nullable_to_non_nullable
                        as List<double>,
            predictionInProgress:
                null == predictionInProgress
                    ? _value.predictionInProgress
                    : predictionInProgress // ignore: cast_nullable_to_non_nullable
                        as bool,
            predictionSuccess:
                null == predictionSuccess
                    ? _value.predictionSuccess
                    : predictionSuccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            predictionFailure:
                null == predictionFailure
                    ? _value.predictionFailure
                    : predictionFailure // ignore: cast_nullable_to_non_nullable
                        as bool,
            predictionDone:
                null == predictionDone
                    ? _value.predictionDone
                    : predictionDone // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PredictionStateImplCopyWith<$Res>
    implements $PredictionStateCopyWith<$Res> {
  factory _$$PredictionStateImplCopyWith(
    _$PredictionStateImpl value,
    $Res Function(_$PredictionStateImpl) then,
  ) = __$$PredictionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    XFile? image,
    XFile? predictionImage,
    String prediction,
    List<double> points,
    bool predictionInProgress,
    bool predictionSuccess,
    bool predictionFailure,
    bool predictionDone,
  });
}

/// @nodoc
class __$$PredictionStateImplCopyWithImpl<$Res>
    extends _$PredictionStateCopyWithImpl<$Res, _$PredictionStateImpl>
    implements _$$PredictionStateImplCopyWith<$Res> {
  __$$PredictionStateImplCopyWithImpl(
    _$PredictionStateImpl _value,
    $Res Function(_$PredictionStateImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$PredictionStateImpl(
        image:
            freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as XFile?,
        predictionImage:
            freezed == predictionImage
                ? _value.predictionImage
                : predictionImage // ignore: cast_nullable_to_non_nullable
                    as XFile?,
        prediction:
            null == prediction
                ? _value.prediction
                : prediction // ignore: cast_nullable_to_non_nullable
                    as String,
        points:
            null == points
                ? _value._points
                : points // ignore: cast_nullable_to_non_nullable
                    as List<double>,
        predictionInProgress:
            null == predictionInProgress
                ? _value.predictionInProgress
                : predictionInProgress // ignore: cast_nullable_to_non_nullable
                    as bool,
        predictionSuccess:
            null == predictionSuccess
                ? _value.predictionSuccess
                : predictionSuccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        predictionFailure:
            null == predictionFailure
                ? _value.predictionFailure
                : predictionFailure // ignore: cast_nullable_to_non_nullable
                    as bool,
        predictionDone:
            null == predictionDone
                ? _value.predictionDone
                : predictionDone // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$PredictionStateImpl implements _PredictionState {
  const _$PredictionStateImpl({
    this.image = null,
    this.predictionImage = null,
    this.prediction = '',
    final List<double> points = const [],
    this.predictionInProgress = false,
    this.predictionSuccess = false,
    this.predictionFailure = false,
    this.predictionDone = false,
  }) : _points = points;

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

  @override
  String toString() {
    return 'PredictionState(image: $image, predictionImage: $predictionImage, prediction: $prediction, points: $points, predictionInProgress: $predictionInProgress, predictionSuccess: $predictionSuccess, predictionFailure: $predictionFailure, predictionDone: $predictionDone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictionStateImpl &&
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
    predictionDone,
  );

  /// Create a copy of PredictionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictionStateImplCopyWith<_$PredictionStateImpl> get copyWith =>
      __$$PredictionStateImplCopyWithImpl<_$PredictionStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PredictionState implements PredictionState {
  const factory _PredictionState({
    final XFile? image,
    final XFile? predictionImage,
    final String prediction,
    final List<double> points,
    final bool predictionInProgress,
    final bool predictionSuccess,
    final bool predictionFailure,
    final bool predictionDone,
  }) = _$PredictionStateImpl;

  @override
  XFile? get image;
  @override
  XFile? get predictionImage;
  @override
  String get prediction;
  @override
  List<double> get points;
  @override
  bool get predictionInProgress;
  @override
  bool get predictionSuccess;
  @override
  bool get predictionFailure;
  @override
  bool get predictionDone;

  /// Create a copy of PredictionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PredictionStateImplCopyWith<_$PredictionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
