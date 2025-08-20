import 'package:flutter/material.dart';
import 'package:ppkd_b_3/day16/preference/shared_preference.dart';
import 'package:ppkd_b_3/day9-10/Login.dart';
import 'package:ppkd_b_3/extension/navigation.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        PreferenceHandler.removeLogin();
        context.pushReplacement(Day9T6TextRich());
      },
      child: Text("Keluar"),
    );
  }
}
