import 'package:clinic/bindings/login.dart';
import 'package:clinic/bindings/signup.dart';
import 'package:clinic/modules/login/login_screen.dart';
import 'package:clinic/modules/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: LogInScreen.routeName,
          page: () => LogInScreen(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: SignUpScreen.routeName,
          page: () => SignUpScreen(),
          binding: SignUpBinding(),
        ),
      ],
    );
  }
}
