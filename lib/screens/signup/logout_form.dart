import 'package:big_cart/screens/login/login_activity.dart';
import 'package:big_cart/widgets/app_main_button.dart';
import 'package:big_cart/widgets/email_authentication_field.dart';
import 'package:big_cart/widgets/password_authentication_field.dart';
import 'package:big_cart/widgets/phone_authentication_field.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/styles.dart';

class LogoutForm extends StatelessWidget {
  const LogoutForm({Key? key}) : super(key: key);

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
              child: Text("Create account", style: heading5),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 2),
              child: Text(
                "Quickly create account",
                style: paragraph2,
              ),
            ),
            SizedBox(height: 21),
            //Email Field
            const EmailAuthenticationField(placeholder: "Email Address"),
            //Email Field
            const PhoneAuthenticationField(placeholder: "Phone Number"),
            //Password Field
            const PasswordAuthenticationField(placeholder: "Password"),
            SizedBox(height: 17),
            // App Main Button
            AppMainButton(placeholder: 'Signup'),
            SizedBox(height: 20),
            // Footer Text
            Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => LoginActivity()));
                },
                child: RichText(
                    text: TextSpan(
                  text: "Already have an account ? ",
                  style: paragraph3,
                  children: <TextSpan>[
                    TextSpan(
                      text: "Login",
                      style: paragraph1.copyWith(color: Colors.black),
                    )
                  ],
                )),
              ),
            ),
            SizedBox(height: 45)
          ],
        ),
      ),
    );
  }
}
