import 'package:flutter/material.dart';

class Timepicker extends StatefulWidget {
  const Timepicker({super.key});

  @override
  State<Timepicker> createState() => _TimepickerState();
}

class _TimepickerState extends State<Timepicker> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Time Picker", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text("Selected time"),
            onPressed: () async {
              final TimeOfDay? pickerDate = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (pickerDate != null) {
                setState(() {});
                selectedTime = pickerDate;
              }
            },
          ),
          SizedBox(height: 20),
          Text(
            selectedTime == null
                ? "Set a time first"
                : "Reminder set at: ${selectedTime!.format(context)}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
