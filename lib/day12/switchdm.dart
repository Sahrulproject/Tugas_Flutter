import 'package:flutter/material.dart';

class SwitchDM extends StatefulWidget {
  const SwitchDM({super.key});

  @override
  State<SwitchDM> createState() => _SwitchDMState();
}

class _SwitchDMState extends State<SwitchDM> {
  bool isCheckSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isCheckSwitch ? Colors.black : Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enable Dark Mode",
              style: TextStyle(
                  color: isCheckSwitch ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                  activeColor: Colors.red,
                  value: isCheckSwitch,
                  onChanged: (value) {
                    setState(() {
                      isCheckSwitch = value;
                    });
                  },
                ),
                Text(
                  isCheckSwitch == true
                      ? "Dark mode is on"
                      : "Light mode is on",
                  style: TextStyle(
                    color: isCheckSwitch ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
