import 'package:big_cart/widgets/email_authentication_field.dart';
import 'package:big_cart/widgets/password_authentication_field.dart';
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
          ],
        ),
      ),
    );
  }
}
