import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stargazer/features/register/presentation/bloc/register_bloc.dart';

import '../../../core/core.dart';

class RegisterContainer extends StatelessWidget {
  RegisterContainer({super.key});

  late RegisterBloc _registerBloc;

  @override
  Widget build(BuildContext context) {
    _registerBloc = context.read<RegisterBloc>();
    return Scaffold(
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          if (state.isLoginPressed || state.isLogin) {
            Navigator.popAndPushNamed(context, RouteConstants.login);
          }
        },
        builder: (context, state) {
          late Widget container;
          if (state.isGoogleSignUp) {
            container = _buildSignUpNameContainer();
          } else if (state.isEmailSignUp) {
            container = _buildVerificationContainer();
          } else if (state.isSignUpSuccess) {
            container = _buildSignUpSuccessContainer();
          } else {
            container = _buildMainContainer();
          }
          return Scaffold(
            backgroundColor: AppColors.coal(1.0),
            body: Center(
              child: container,
            ),
          );
        },
      ),
    );
  }

  Widget _buildSignUpNameContainer() {
    return SizedBox(
        width: 320,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: [
            Text(
              'Sign up',
              style: AppTexts.SFProRegular(
                  color: AppColors.rice(1.0), fontSize: 24),
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.coalLight(1.0),
                hintText: 'Name',
                hintStyle: AppTexts.SFProRegular(
                    color: AppColors.rice(0.5), fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              onChanged: (value) {
                _registerBloc.add(RegisterEvent.onNameChanged(value));
              },
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: AppColors.rice(1.0),
                fixedSize: const Size.fromWidth(double.maxFinite),
              ),
              child: Text(
                'Continue',
                style: AppTexts.SFProSemibold(
                    color: AppColors.coal(1.0), fontSize: 16),
              ),
            ),
          ],
        ));
  }

  Widget _buildVerificationContainer() {
    return SizedBox(
        width: 320,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.rice(1.0), AppColors.gradientBlue(1.0)],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: Icon(Icons.mail_outline, size: 100),
            ),
            Text('Verify your email !',
                style: AppTexts.SFProRegular(
                    color: AppColors.rice(1.0), fontSize: 24)),
            Text(
              'We have sent an email to\n${_registerBloc.state.email}',
              style: AppTexts.SFProRegular(
                  color: AppColors.rice(1.0), fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                _registerBloc.add(RegisterEvent.onVerifyEmailPressed());
              },
              style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: AppColors.rice(1.0),
                fixedSize: const Size.fromWidth(double.maxFinite),
              ),
              child: Text(
                'I verified my email',
                style: AppTexts.SFProSemibold(
                    color: AppColors.coal(1.0), fontSize: 16),
              ),
            ),
          ],
        ));
  }

  Widget _buildSignUpSuccessContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.rice(1.0), AppColors.gradientBlue(1.0)],
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcIn,
          child: Icon(Icons.check_circle_outline, size: 100),
        ),
        Text('Sign up successfully !',
            style: AppTexts.SFProRegular(
                color: AppColors.rice(1.0), fontSize: 24)),
      ],
    );
  }

  Widget _buildMainContainer() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildLogo(),
                const SizedBox(height: 16),
                _buildRegisterForm(),
              ],
            ),
          ),
          _buildLoginBtn(
            () {
              _registerBloc.add(RegisterEvent.onLoginPressed());
            },
          ),
        ]));
  }

  Widget _buildLogo() {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            'lib/assets/images/logo/stargazer logo - gradient.png',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [
                AppColors.rice(1.0),
                AppColors.gradientBlue(1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcIn,
          child: Text(
            'StarGazer',
            style: AppTexts.SFProLight(fontSize: 32),
          ),
        ),
      ],
    );
  }

  Widget _buildRegisterForm() {
    return SizedBox(
        width: 320,
        child: Column(
          spacing: 12,
          children: [
            Text(
              'Sign up',
              style: AppTexts.SFProRegular(
                  color: AppColors.rice(1.0), fontSize: 24),
            ),
            TextField(
              style: AppTexts.SFProRegular(
                  color: AppColors.rice(1.0), fontSize: 16),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.coalLight(1.0),
                hintText: 'Email',
                hintStyle: AppTexts.SFProRegular(
                    color: AppColors.rice(0.5), fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              onChanged: (value) {
                _registerBloc.add(RegisterEvent.onEmailChanged(value));
              },
            ),
            Row(children: [
              Expanded(
                  child: TextField(
                obscureText: !_registerBloc.state.isPasswordVisible,
                style: AppTexts.SFProRegular(
                    color: AppColors.rice(1.0), fontSize: 16),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.coalLight(1.0),
                  hintText: 'Password',
                  hintStyle: AppTexts.SFProRegular(
                      color: AppColors.rice(0.5), fontSize: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                onChanged: (value) {
                  _registerBloc.add(RegisterEvent.onPasswordChanged(value));
                },
              )),
              IconButton(
                onPressed: () {
                  _registerBloc.add(RegisterEvent.onPasswordVisibleChanged());
                },
                icon: Icon(
                  _registerBloc.state.isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: AppColors.rice(1.0),
                ),
              )
            ]),
            TextField(
              style: AppTexts.SFProRegular(
                  color: AppColors.rice(1.0), fontSize: 16),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.coalLight(1.0),
                hintText: 'Name',
                hintStyle: AppTexts.SFProRegular(
                    color: AppColors.rice(0.5), fontSize: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              onChanged: (value) {
                _registerBloc.add(RegisterEvent.onNameChanged(value));
              },
            ),
            TextButton(
              onPressed: () {
                _registerBloc.add(RegisterEvent.onEmailSignUpPressed());
              },
              style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: AppColors.rice(1.0),
                fixedSize: const Size.fromWidth(double.maxFinite),
              ),
              child: Text(
                'Continue',
                style: AppTexts.SFProSemibold(
                    color: AppColors.coal(1.0), fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {
                _registerBloc.add(RegisterEvent.onGoogleSignUpPressed());
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: AppColors.coalLight(1.0)),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                fixedSize: const Size.fromHeight(48),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/images/google_logo.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Continue with Google',
                    style: AppTexts.SFProRegular(
                        color: AppColors.rice(1.0), fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildLoginBtn(void Function() onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 8,
        children: [
          Text('Already have an account?',
              style: AppTexts.SFProRegular(
                  color: AppColors.rice(0.5), fontSize: 16)),
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [AppColors.rice(1.0), AppColors.gradientBlue(1.0)],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcIn,
            child: Text(
              'Log in now!',
              style: AppTexts.SFProMedium(
                  color: AppColors.rice(1.0), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
