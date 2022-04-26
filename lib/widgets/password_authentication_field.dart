import 'package:big_cart/constants/asset_constants.dart';
import 'package:big_cart/shared/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordAuthenticationField extends StatelessWidget {
  final String placeholder;

  const PasswordAuthenticationField({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 17, right: 17, top: 5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
            icon: const Icon(
              CupertinoIcons.lock,
              color: appGreyColor,
            ),
            hintText: placeholder,
            hintStyle: const TextStyle(
              color: appGreyColor,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
