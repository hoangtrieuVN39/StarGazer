import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/features/camera/presentation/bloc/camera_bloc.dart';

class CameraContainer extends StatelessWidget {
  const CameraContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final cameraBloc = context.read<CameraBloc>();
    return BlocConsumer<CameraBloc, CameraState>(
      listener: (context, state) {
        // Handle state changes if needed
      },
      builder: (context, state) {
        if (!state.CameraInitial) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              // Camera Preview
              CameraPreview(cameraBloc.getCameraController()),

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
                          // Handle gallery button press
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
                          // Handle camera flip
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

  // _bottomNavigationBar() {
  //   return Container(
  //     color: Colors.black12,
  //     child: SafeArea(
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 8),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             TextButton(
  //               onPressed: () {},
  //               child: const Text(
  //                 'Chatbot',
  //                 style: TextStyle(color: Colors.black54, fontSize: 16),
  //               ),
  //             ),
  //             TextButton(
  //               onPressed: () {},
  //               child: const Text(
  //                 'Fortune teller',
  //                 style: TextStyle(color: Colors.black54, fontSize: 16),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
