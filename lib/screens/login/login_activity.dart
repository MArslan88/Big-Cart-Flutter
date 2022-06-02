import 'package:big_cart/constants/asset_constants.dart';
import 'package:big_cart/screens/login/login_form.dart';
import 'package:big_cart/shared/styles.dart';
import 'package:flutter/material.dart';

class LoginActivity extends StatelessWidget {
  const LoginActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Image.asset(AssetConstants.loginBackground),
            ),
            Positioned(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 26),
                  child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          // onTap: () => onback(context),
                          child: const Icon(Icons.west, color: Colors.white))),
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
                    padding: EdgeInsets.only(top: 450),
                    child: LoginForm(),
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
