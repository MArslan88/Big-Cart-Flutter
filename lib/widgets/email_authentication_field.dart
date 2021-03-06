import 'package:big_cart/constants/asset_constants.dart';
import 'package:big_cart/shared/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailAuthenticationField extends StatelessWidget {
  final String placeholder;

  const EmailAuthenticationField({required this.placeholder});

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
        style: const TextStyle(color: Colors.black, fontSize: 15),
        decoration: InputDecoration(
            icon: const Icon(
              CupertinoIcons.mail,
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
