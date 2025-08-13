import 'package:flutter/material.dart';

class Day15HomeB extends StatelessWidget {
  const Day15HomeB({
    super.key,
    required this.name,
    required this.email,
    this.phone,
    required this.kota,
  });
  final String name;
  final String email;
  final String? phone;
  final String kota;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            email,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            phone ?? "Tidak ada nomor telepon",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            kota,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
