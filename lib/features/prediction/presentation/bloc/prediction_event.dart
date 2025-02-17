part of 'prediction_bloc.dart';

@freezed
class PredictionEvent with _$PredictionEvent {
  const factory PredictionEvent.initialized() = _Initialized;
  const factory PredictionEvent.predictionMade() = _PredictionMade;
}
