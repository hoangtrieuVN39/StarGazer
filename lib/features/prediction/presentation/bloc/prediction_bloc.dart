import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stargazer/features/prediction/domain/usecases/predicting_image_usecase.dart';
import 'package:stargazer/features/prediction/domain/usecases/predicting_usecase.dart';
import 'package:stargazer/features/prediction/domain/usecases/prediction_to_img_usecase.dart';

part 'prediction_event.dart';
part 'prediction_state.dart';
part 'prediction_bloc.freezed.dart';

class PredictionBloc extends Bloc<PredictionEvent, PredictionState> {
  XFile? image;
  PredictingImageUsecase predictingImageUsecase;
  PredictingUsecase predictingUsecase;
  PredictionToImgUsecase predictionToImgUsecase;

  PredictionBloc({
    this.image,
    required this.predictingImageUsecase,
    required this.predictingUsecase,
    required this.predictionToImgUsecase,
  }) : super(const PredictionState()) {
    on<_Initialized>((event, emit) {
      emit(state.copyWith(predictionInProgress: true, image: image));
      add(PredictionEvent.predictionMade());
    });

    on<_PredictionMade>((event, emit) async {
      emit(state.copyWith(predictionInProgress: true));
      final output = await predictingImageUsecase(image!);
      final predictionImage = await predictionToImgUsecase(image!, output);
      emit(
        state.copyWith(
          predictionInProgress: false,
          predictionSuccess: true,
          predictionImage: predictionImage,
          points: output,
        ),
      );
    });

    on<_PredictionDone>((event, emit) async {
      final prediction = await predictingUsecase(state.points);
      emit(state.copyWith(predictionDone: true, prediction: prediction));
    });

    add(_Initialized());
  }
}
