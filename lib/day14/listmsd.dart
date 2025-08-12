import 'package:flutter/material.dart';

class Day14ListMapStringDynamic extends StatefulWidget {
  const Day14ListMapStringDynamic({super.key});

  @override
  State<Day14ListMapStringDynamic> createState() =>
      _Day14ListMapStringDynamicState();
}

class _Day14ListMapStringDynamicState extends State<Day14ListMapStringDynamic> {
  //Step 1

  final List<Map<String, dynamic>> produk = [
    {"nama": "Tramadol", "price": 15000, "warna": Colors.blue},
    {"nama": "Panadol", "price": 13000, "warna": Colors.blue},
    {"nama": "Paracetamol", "price": 60000, "warna": Colors.red},
    {"nama": "Bodrexin", "price": 70000, "warna": Colors.yellow},
    {"nama": "Paramex", "price": 70000, "warna": Colors.yellow},
    {"nama": "Nellco", "price": 80000, "warna": Colors.green},
    {"nama": "OBH Plus", "price": 80000, "warna": Colors.green},
    {"nama": "Diapet", "price": 80000, "warna": Colors.green},
    {"nama": "Diatabs", "price": 80000, "warna": Colors.green},
    {"nama": "Mixagrip", "price": 80000, "warna": Colors.green},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //List
          Divider(),
          //List of Map
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: produk.length,
            itemBuilder: (BuildContext context, int index) {
              final dataProduk = produk[index];
              return ListTile(
                title: Text(dataProduk["nama"]),
                subtitle: Text(dataProduk["price"].toString()),
                trailing: CircleAvatar(backgroundImage: dataProduk["warna"]),
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text("${index + 1}"),
                ),
              );
            },
          ),
          //Model
          Divider(),
        ],
      ),
    );
  }
}
