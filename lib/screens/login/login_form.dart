import 'package:big_cart/widgets/app_main_button.dart';
import 'package:big_cart/widgets/email_authentication_field.dart';
import 'package:big_cart/widgets/password_authentication_field.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        color: Color(0xF4F5F9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 30),
              child: Text("Welcome back !", style: heading5),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 2),
              child: Text(
                "Sign in to your account",
                style: paragraph2,
              ),
            ),
            SizedBox(height: 21),
            const EmailAuthenticationField(placeholder: "Email Address"),
            const PasswordAuthenticationField(placeholder: "Password"),
            SizedBox(height: 21),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // place here switch button
                  SizedBox(width: 9.43),
                  Text("Remember me", style: paragraph1),
                  Spacer(),
                  Text("Forget password",
                      style: paragraph1.copyWith(color: appBlueColor))
                ],
              ),
            ),
            SizedBox(height: 17),
            AppMainButton()
          ],
        ),
      ),
    );
  }
}
