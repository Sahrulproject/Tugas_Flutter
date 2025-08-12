import 'package:flutter/material.dart';
import 'package:ppkd_b_3/day14/model/produkmodel.dart';

class Day14ListOnListModel extends StatefulWidget {
  const Day14ListOnListModel({super.key});

  @override
  State<Day14ListOnListModel> createState() => _Day14ListOnListModelState();
}

class _Day14ListOnListModelState extends State<Day14ListOnListModel> {
  //Step 1

  final List<ProdukModel> produkModel = [
    ProdukModel(nama: "Tramadol", price: 50000, warna: Colors.blue),
    ProdukModel(nama: "Panadol", price: 80000, warna: Colors.indigoAccent),
    ProdukModel(nama: "Paracetamol", price: 60000, warna: Colors.red),
    ProdukModel(nama: "Bodrexin", price: 70000, warna: Colors.yellow),
    ProdukModel(nama: "Paramex", price: 80000, warna: Colors.indigoAccent),
    ProdukModel(nama: "Nellco", price: 80000, warna: Colors.indigoAccent),
    ProdukModel(nama: "OBH Plus", price: 80000, warna: Colors.indigoAccent),
    ProdukModel(nama: "Diapet", price: 80000, warna: Colors.indigoAccent),
    ProdukModel(nama: "Diatabs", price: 80000, warna: Colors.indigoAccent),
    ProdukModel(nama: "Mixagrip", price: 80000, warna: Colors.indigoAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: produkModel.length,
            itemBuilder: (BuildContext context, int index) {
              final dataProdukModel = produkModel[index];
              return ListTile(
                title: Text(dataProdukModel.nama),
                subtitle: Text(dataProdukModel.price.toString()),
                trailing: CircleAvatar(backgroundColor: dataProdukModel.warna),
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text("${index + 1}"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
