import 'package:big_cart/constants/asset_constants.dart';
import 'package:big_cart/screens/login/hook_example.dart';
import 'package:big_cart/screens/login/login_activity.dart';
import 'package:big_cart/screens/login/login_form.dart';
import 'package:big_cart/screens/signup/logout_activity.dart';
import 'package:big_cart/screens/signup/logout_form.dart';
import 'package:big_cart/screens/splash/background.dart';
import 'package:big_cart/screens/splash/foreground.dart';
import 'package:big_cart/screens/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LogoutActivity(),
      ),
    );
  }
}
