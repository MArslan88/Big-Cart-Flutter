import 'package:big_cart/shared/styles.dart';
import 'package:flutter/material.dart';

class AppMainButton extends StatelessWidget {
  final String placeholder;

  const AppMainButton({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17),
      alignment: Alignment.center,
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [appGreenSecondary, appGreenColor],
        ),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: appGreenColor.withOpacity(0.25),
              offset: Offset(0, 10),
              blurRadius: 9),
        ],
      ),
      child: Text(placeholder, style: heading7),
    );
  }
}
