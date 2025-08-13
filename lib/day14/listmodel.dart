import 'package:flutter/material.dart';
import 'package:ppkd_b_3/day14/model/produkmodel.dart';

class Day14ListOnListModel extends StatefulWidget {
  const Day14ListOnListModel({super.key});

  @override
  State<Day14ListOnListModel> createState() => _Day14ListOnListModelState();
}

class _Day14ListOnListModelState extends State<Day14ListOnListModel> {
  //Step 1

  final List<ProdukObat> produkModel = [
    ProdukObat(
        nama: "Tramadol",
        price: 75000,
        warna: Colors.blue,
        gambar: "assets/im/medicine/tramadol.jpg"),
    ProdukObat(
        nama: "Panadol",
        price: 15000,
        warna: Colors.indigoAccent,
        gambar: "assets/im/medicine/panadol.jpg"),
    ProdukObat(
        nama: "Paracetamol",
        price: 15000,
        warna: Colors.red,
        gambar: "assets/im/medicine/parcetamol.jpg"),
    ProdukObat(
        nama: "Bodrexin",
        price: 20000,
        warna: Colors.yellow,
        gambar: "assets/im/medicine/bodrexin.jpg"),
    ProdukObat(
        nama: "Paramex",
        price: 10000,
        warna: Colors.indigoAccent,
        gambar: "assets/im/medicine/paramex.jpg"),
    ProdukObat(
        nama: "Nellco",
        price: 30000,
        warna: Colors.indigoAccent,
        gambar: "assets/im/medicine/nellco.jpg"),
    ProdukObat(
        nama: "OBH Plus",
        price: 25000,
        warna: Colors.indigoAccent,
        gambar: "assets/im/medicine/obh plus.jpg"),
    ProdukObat(
        nama: "Diapet",
        price: 10000,
        warna: Colors.indigoAccent,
        gambar: "assets/im/medicine/diapet.png"),
    ProdukObat(
        nama: "Diatabs",
        price: 15000,
        warna: Colors.indigoAccent,
        gambar: "assets/im/medicine/diatabs.jpg"),
    ProdukObat(
        nama: "Mixagrip",
        price: 5000,
        warna: Colors.indigoAccent,
        gambar: "assets/im/medicine/mixagrip.jpg"),
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
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(dataProdukModel.gambar),
                  ),
                  title: Text(dataProdukModel.nama),
                  subtitle: Text("Rp. ${dataProdukModel.price}"),
                  trailing: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.blueGrey,
                    onPressed: () {
                      // Aksi ketika tombol keranjang ditekan
                      print("Tambah ke keranjang: ${dataProdukModel.nama}");
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
