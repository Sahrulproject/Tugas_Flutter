import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateDP extends StatefulWidget {
  const DateDP({super.key});

  @override
  State<DateDP> createState() => _DateDPState();
}

class _DateDPState extends State<DateDP> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Your date of birth",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Select birth date"),
              onPressed: () async {
                final DateTime? pickerDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1930),
                  lastDate: DateTime(2050),
                );
                if (pickerDate != null) {
                  setState(() {});
                  selectedDate = pickerDate;
                }
              },
            ),
            SizedBox(height: 20),
            Text(
              selectedDate == null
                  ? "Choose a date first"
                  : DateFormat(
                      'EEEE, dd MMMM yyyy',
                      "id_ID",
                    ).format(selectedDate!),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
