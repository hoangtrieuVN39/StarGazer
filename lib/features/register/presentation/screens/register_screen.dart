import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_text_kit/animated_text_kit.dart'; // Add this line
import '../bloc/register_bloc.dart';

import '../bloc/register_state.dart';
import '../widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
        backgroundColor: const Color(0xFF1E1E1E),
        body: BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if (state is RegisterFailure) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.error)));
            } else if (state is RegisterSuccess) {
              Navigator.pushReplacementNamed(context, '/home');
            }
          },
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Back to Home icon
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                    ),
                  ),
                  const SizedBox(height: 20),

                  // App logo
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'lib/assets/images/logo.png',
                      height: 200,
                      width: 200,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // App name
                  AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'StarGazer',
                        textStyle: const TextStyle(
                          fontFamily: 'SF Pro',
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                        colors: [
                          Colors.blue,
                          Colors.purple,
                          Colors.indigo,
                          Colors.blue,
                        ],
                      ),
                    ],
                    isRepeatingAnimation: true,
                    totalRepeatCount: 3,
                  ),
                  const SizedBox(height: 40),

                  // Registration form
                  const RegisterForm(),

                  const SizedBox(height: 20),

                  // Google and Apple login buttons
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Handle Google login
                          },
                          icon: Image.asset(
                            'lib/assets/images/google_logo.png', // Path to Google logo
                            height: 24,
                          ),
                          label: const Text('Login with Google'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Handle Apple login
                          },
                          icon: Image.asset(
                            'lib/assets/images/apple_logo.png', // Path to Apple logo
                            height: 24,
                          ),
                          label: const Text('Login with Apple'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Link to registration screen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
