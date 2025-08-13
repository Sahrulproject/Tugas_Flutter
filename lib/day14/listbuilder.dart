import 'package:flutter/material.dart';

class Day14ListOnListViewBuilder extends StatefulWidget {
  const Day14ListOnListViewBuilder({super.key});

  @override
  State<Day14ListOnListViewBuilder> createState() =>
      _Day14ListOnListViewBuilderState();
}

class _Day14ListOnListViewBuilderState
    extends State<Day14ListOnListViewBuilder> {
  //Step 1
  final List<String> namaObat = [
    "Tramadol",
    "Panadol",
    "Paracetamol",
    "Bodrexin",
    "Paramex",
    "Nellco",
    "OBH Plus",
    "Diapet",
    "Diatabs",
    "Mixagrip"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //List
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: namaObat.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(namaObat[index]),
                leading: CircleAvatar(child: Text("${index + 1}.")),
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
