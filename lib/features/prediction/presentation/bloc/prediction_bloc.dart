import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stargazer/features/prediction/domain/usecases/predicting_usecase.dart';


part 'prediction_event.dart';
part 'prediction_state.dart';
part 'prediction_bloc.freezed.dart';

class PredictionBloc extends Bloc<PredictionEvent, PredictionState> {
  XFile? image;
  PredictingUsecase predictingUsecase;

  PredictionBloc({this.image, required this.predictingUsecase})
    : super(const PredictionState()) {
    on<_Initialized>((event, emit) {
      emit(state.copyWith(predictionInProgress: true, image: image));
      add(PredictionEvent.predictionMade());
    });

    on<_PredictionMade>((event, emit) async {
      emit(state.copyWith(predictionInProgress: true));
      final output = await predictingUsecase(image!);
      emit(
        state.copyWith(
          predictionInProgress: false,
          predictionSuccess: true,
          predictionImage: output,
        ),
      );
    });

    add(_Initialized());
  }
}