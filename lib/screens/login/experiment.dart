import 'package:big_cart/constants/asset_constants.dart';
import 'package:big_cart/screens/login/login_form.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FractionallySizedBox(
            child: SizedBox.expand(
                child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(AssetConstants.loginBackground),
            )),
          ),
          Positioned(
              child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 17, right: 26),
                child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        // onTap: () => onback(context),
                        child: const Icon(Icons.west, color: Colors.white))),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 130),
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
                  padding: EdgeInsets.only(top: 600),
                  child: LoginForm(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
