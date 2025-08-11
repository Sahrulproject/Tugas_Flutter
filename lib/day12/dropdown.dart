import 'package:flutter/material.dart';

class DropDL extends StatefulWidget {
  const DropDL({super.key});

  @override
  State<DropDL> createState() => _DropDLState();
}

class _DropDLState extends State<DropDL> {
  String? dropdownSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "DropdownButton",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        DropdownButton(
          value: dropdownSelect,
          hint: Text(
            "Pilih Kategori Produk",
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
          items: ["Elektronik", "Pakaian", "Makanan", "Lainnya"]
              .map((String value) {
            return DropdownMenuItem(value: value, child: Text(value));
          }).toList(),
          onChanged: (value) {
            setState(() {});
            dropdownSelect = value;
          },
        ),
      ],
    );
  }
}
