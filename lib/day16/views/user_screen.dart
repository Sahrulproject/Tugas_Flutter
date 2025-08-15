import 'package:flutter/material.dart';
import 'package:ppkd_b_3/day16/model/user.dart';
import 'package:ppkd_b_3/day16/sqflite/db_helper.dart';

class Day16UserScreen extends StatefulWidget {
  const Day16UserScreen({super.key});
  static const nama = "/user";

  @override
  State<Day16UserScreen> createState() => _Day16UserScreenState();
}

class _Day16UserScreenState extends State<Day16UserScreen> {
  List<Peliharaan> peliharaan = [];
  @override
  void initState() {
    super.initState();
    getUser();
  }

  final TextEditingController namaController = TextEditingController();
  final TextEditingController jenisController = TextEditingController();
  final TextEditingController warnaController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  Future<void> getUser() async {
    final dataPeliharaan = await DbHelper.getAllPeliharaan();
    print(dataPeliharaan);
    setState(() {
      peliharaan = dataPeliharaan;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              TextFormField(
                controller: namaController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Nama Peliharaan",
                ),
              ),
              TextFormField(
                controller: jenisController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Jenis",
                ),
              ),
              TextFormField(
                controller: warnaController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Warna",
                ),
              ),
              TextFormField(
                controller: cityController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "city",
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final name = namaController.text.trim();
                  final tipe = jenisController.text.trim();
                  final warna = warnaController.text.trim();
                  final city = cityController.text.trim();
                  if (name.isEmpty ||
                      tipe.isEmpty ||
                      warna.isEmpty ||
                      city.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Kolom harus diisi",
                        ),
                      ),
                    );

                    return;
                  }
                  final peliharaan = Peliharaan(
                      name: name, tipe: tipe, warna: warna, city: city);
                  await DbHelper.registerPeliharaan(peliharaan);
                  Future.delayed(const Duration(seconds: 1)).then((value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Pendataan berhasil")),
                    );
                  });
                  getUser();
                  setState(() {});
                },
                child: Text("Simpan Data"),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: peliharaan.length,
                itemBuilder: (BuildContext context, int index) {
                  final dataUserLogin = peliharaan[index];
                  // return ListTile(
                  //   title: Text(dataUserLogin.nama0),
                  //   subtitle: Text(dataUserLogin.nama),
                  // );

                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 6),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: 0.2),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: Color(0xff21BDCA),
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            // spacing: 12,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Name : ${dataUserLogin.name}"),
                              Text("Tipe : ${dataUserLogin.tipe}"),
                              Text("Warna : ${dataUserLogin.warna}"),
                              Text("Asal Kota : ${dataUserLogin.city}"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
