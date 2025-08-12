import 'package:flutter/material.dart';

class Day14ListMapStringDynamic extends StatefulWidget {
  const Day14ListMapStringDynamic({super.key});

  @override
  State<Day14ListMapStringDynamic> createState() =>
      _Day14ListMapStringDynamicState();
}

class _Day14ListMapStringDynamicState extends State<Day14ListMapStringDynamic> {
  //Step 1

  final List<Map<String, dynamic>> medicine = [
    {
      "nama": "Tramadol",
      "price": 75000,
      "gambar": "assets/im/medicine/tramadol.jpg"
    },
    {
      "nama": "Panadol",
      "price": 15000,
      "gambar": "assets/im/medicine/panadol.jpg"
    },
    {
      "nama": "Paracetamol",
      "price": 15000,
      "gambar": "assets/im/medicine/parcetamol.jpg"
    },
    {
      "nama": "Bodrexin",
      "price": 20000,
      "gambar": "assets/im/medicine/bodrexin.jpg"
    },
    {
      "nama": "Paramex",
      "price": 10000,
      "gambar": "assets/im/medicine/paramex.jpg"
    },
    {
      "nama": "Nellco",
      "price": 30000,
      "gambar": "assets/im/medicine/nellco.jpg"
    },
    {
      "nama": "OBH Plus",
      "price": 25000,
      "gambar": "assets/im/medicine/obh plus.jpg"
    },
    {
      "nama": "Diapet",
      "price": 10000,
      "gambar": "assets/im/medicine/diapet.png"
    },
    {
      "nama": "Diatabs",
      "price": 15000,
      "gambar": "assets/im/medicine/diatabs.jpg"
    },
    {
      "nama": "Mixagrip",
      "price": 5000,
      "gambar": "assets/im/medicine/mixagrip.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //List of Map
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: medicine.length,
            itemBuilder: (BuildContext context, int index) {
              final dataMedicine = medicine[index];
              return ListTile(
                title: Text(dataMedicine["nama"]),
                subtitle: Text("Rp. ${dataMedicine["price"]}"),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage(dataMedicine["gambar"]),
                ),
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
