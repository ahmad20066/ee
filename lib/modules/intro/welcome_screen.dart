import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:clinic/components/auth/auth_button.dart';
import 'package:clinic/modules/login/login_screen.dart';
import 'package:clinic/modules/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
            width: double.infinity,
          ),
          // Text(
          //   "WELCOME",
          //   textAlign: TextAlign.center,
          //style:
          //)
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'WELCOME!',
                speed: Duration(milliseconds: 300),
                textStyle: TextStyle(
                    fontSize: 60.sp,
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Caveat'),
              ),
            ],
          ),
          SizedBox(
            height: 90.h,
          ),
          AuthButton(
            isFilled: true,
            text: "Sign Up",
            onTap: () {
              Get.toNamed(SignUpScreen.routeName);
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          AuthButton(
              isFilled: false,
              text: "Log In",
              onTap: () {
                Get.toNamed(LogInScreen.routeName);
              })
        ],
      ),
    );
  }
}
