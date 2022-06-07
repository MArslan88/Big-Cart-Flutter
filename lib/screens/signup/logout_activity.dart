import 'package:big_cart/constants/asset_constants.dart';
import 'package:big_cart/screens/login/login_activity.dart';
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
        child: Stack(
          children: [
            Container(
              child: Image.asset(AssetConstants.signupBackground),
            ),
            Positioned(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 37, right: 26),
                  child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          // onTap: () => onback(context),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(
                                    context); // return to previous screen
                              },
                              child: Icon(Icons.west, color: Colors.white)))),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50, left: 65),
                  child: Text("Welcome",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white)),
                ),
              ],
            )),
            Positioned(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 400),
                    child: LogoutForm(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
