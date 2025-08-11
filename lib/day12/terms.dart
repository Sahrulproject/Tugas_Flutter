import 'package:flutter/material.dart';

class TermsnConditions extends StatefulWidget {
  const TermsnConditions({super.key});

  @override
  State<TermsnConditions> createState() => _TermsnConditionsState();
}

class _TermsnConditionsState extends State<TermsnConditions> {
  bool isCheck = false;
  bool isCheckSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isCheckSwitch == true ? Colors.black : Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "These Terms and Conditions outline the rules and regulations for using Organizer the Jakmania Waroeng Boencit.",
                style: TextStyle(
                    color: isCheckSwitch == true ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  activeColor: Colors.red,
                  value: isCheck,
                  onChanged: (value) {
                    setState(() {
                      isCheck = value!;
                    });
                  },
                ),
                Text(
                  isCheck == true ? "Setuju" : "Tidak Setuju",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
