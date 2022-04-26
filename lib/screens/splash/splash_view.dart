import 'package:flutter/material.dart';

import 'background.dart';
import 'foreground.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Background(),
          Foreground(),
        ],
      ),
    );
  }
}
