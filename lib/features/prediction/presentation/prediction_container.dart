import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/core/utils/colors.dart';
import 'package:stargazer/features/home/presentation/bloc/home_bloc.dart';
import 'package:stargazer/features/prediction/presentation/bloc/prediction_bloc.dart';

class PredictionContainer extends StatelessWidget {
  PredictionContainer({super.key});

  late HomeBloc homeBloc;
  late PredictionBloc predictionBloc;

  @override
  Widget build(BuildContext context) {
    homeBloc = context.read<HomeBloc>();
    predictionBloc = context.read<PredictionBloc>();

    return BlocConsumer<PredictionBloc, PredictionState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.predictionImage == null || state.predictionInProgress) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        return Scaffold(
          backgroundColor: AppColors.coalLight(1.0),
          body: Container(
            padding: const EdgeInsets.all(24),
            child:
                state.predictionDone
                    ? _buildPrediction()
                    : _buildPredictionImage(),
          ),
        );
      },
    );
  }

  Widget _buildPredictionImage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 16,
      children: [
        Text(
          'The Universe is seeking...',
          style: TextStyle(color: AppColors.rice(1.0), fontSize: 16),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.file(
            File(predictionBloc.state.predictionImage!.path),
            width: 320,
            height: 320,
            fit: BoxFit.cover,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 32,
          children: [
            TextButton(
              style: TextButton.styleFrom(fixedSize: Size(100, 100)),
              onPressed: () {
                homeBloc.add(HomeEvent.imageCaptured(null));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.arrow_back_rounded,
                    color: AppColors.rice(1.0),
                    size: 56,
                  ),
                  Text(
                    'Choose again',
                    style: TextStyle(color: AppColors.rice(1.0), fontSize: 12),
                  ),
                ],
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(fixedSize: Size(100, 100)),
              onPressed: () {
                predictionBloc.add(PredictionEvent.predictionDone());
              },
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: AppColors.blue(1.0),
                    size: 56,
                  ),
                  Text(
                    'Done',
                    style: TextStyle(color: AppColors.rice(1.0), fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPrediction() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Text(
            predictionBloc.state.prediction,
            style: TextStyle(color: AppColors.rice(1.0), fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32,
            children: [
              TextButton(
                style: TextButton.styleFrom(fixedSize: Size(100, 100)),
                onPressed: () {
                  homeBloc.add(HomeEvent.imageCaptured(null));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      color: AppColors.rice(1.0),
                      size: 56,
                    ),
                    Text(
                      'Choose again',
                      style: TextStyle(
                        color: AppColors.rice(1.0),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
