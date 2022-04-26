import 'package:flutter/material.dart';

import '../../shared/styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
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
              style: heading3,
            ),
          ),
          SizedBox(height: 26),
        ],
      ),
    );
  }
}
