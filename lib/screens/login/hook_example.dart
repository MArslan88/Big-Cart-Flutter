import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HookExample extends HookWidget {
  const HookExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userNameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Hooks Example"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              TextField(
                controller: userNameController,
              ),
              TextField(
                controller: passwordController,
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final usr = userNameController.text;
                  final pwd = passwordController.text;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Logged in with $usr and $pwd"),
                    ),
                  );
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
