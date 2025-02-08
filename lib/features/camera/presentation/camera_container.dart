import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/features/camera/presentation/bloc/camera_bloc.dart';

class CameraContainer extends StatelessWidget {
  const CameraContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final cameraBloc = context.read<CameraBloc>();
    return BlocListener<CameraBloc, CameraState>(
      listener: (context, state) {},
      child: BlocConsumer<CameraBloc, CameraState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (!state.CameraInitial) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          return Scaffold(
            body: CameraPreview(cameraBloc.getCameraController()),
          );
        },
      ),
    );
  }
}
