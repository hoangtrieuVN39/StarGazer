part of 'prediction_bloc.dart';

@freezed
class PredictionState with _$PredictionState {
  const factory PredictionState({
    @Default(null) XFile? image,
    @Default(null) XFile? predictionImage,
    @Default('') String prediction,
    @Default([]) List<double> points,
    @Default(false) bool predictionInProgress,
    @Default(false) bool predictionSuccess,
    @Default(false) bool predictionFailure,
    @Default(false) bool predictionDone,
  }) = _PredictionState;
}
