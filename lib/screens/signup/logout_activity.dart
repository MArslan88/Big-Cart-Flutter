import 'package:big_cart/constants/asset_constants.dart';
import 'package:big_cart/screens/login/login_form.dart';
import 'package:big_cart/screens/signup/logout_form.dart';
import 'package:big_cart/shared/styles.dart';
import 'package:flutter/material.dart';

class LogoutActivity extends StatelessWidget {
  const LogoutActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AssetConstants.signupBackground),
            LogoutForm(),
          ],
        ),
      ),
    );
  }
}
