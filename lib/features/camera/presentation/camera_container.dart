import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/features/camera/presentation/bloc/camera_bloc.dart';
import 'package:stargazer/features/home/presentation/bloc/home_bloc.dart';
import 'package:stargazer/features/prediction/presentation/prediction_page.dart';

class CameraContainer extends StatelessWidget {
  const CameraContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final cameraBloc = context.read<CameraBloc>();

    return BlocConsumer<CameraBloc, CameraState>(
      listener: (context, state) {
        if (state.image != null) {
          context.read<HomeBloc>().add(HomeEvent.imageCaptured(state.image));
        }
      },
      builder: (context, state) {
        if (!state.cameraInitial) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              // Camera Preview
              CameraPreview(cameraBloc.getCameraController()!),

              // Bottom Controls
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildBottomButton(
                        icon: Icons.photo_library,
                        onTap: () {
                          cameraBloc.add(const CameraEvent.openGallery());
                        },
                      ),
                      // Capture Button
                      GestureDetector(
                        onTap: () {
                          cameraBloc.add(const CameraEvent.captured());
                        },
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      _buildBottomButton(
                        icon: Icons.flip_camera_ios,
                        onTap: () {
                          cameraBloc.add(
                            const CameraEvent.cameraLensDirectionChanged(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),

              // Camera frame overlay
              // Center(
              //   child: Container(
              //     margin: const EdgeInsets.all(32),
              //     decoration: BoxDecoration(
              //       border: Border.all(color: Colors.white, width: 2),
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBottomButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}
