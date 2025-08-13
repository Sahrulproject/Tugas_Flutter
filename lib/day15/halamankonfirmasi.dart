import 'package:flutter/material.dart';

class HalamanKonfirmasi extends StatelessWidget {
  final String name;
  final String kota;

  const HalamanKonfirmasi({
    super.key,
    required this.name,
    required this.kota,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Konfirmasi")),
      body: Center(
        child: Text(
          "Terima kasih, $name dari $kota telah mendaftar.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
