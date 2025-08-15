import 'package:flutter/material.dart';
import 'package:ppkd_b_3/day15/halamankonfirmasi.dart';
import 'package:ppkd_b_3/day15/textform.dart';

class Day15PDHal1 extends StatefulWidget {
  const Day15PDHal1({super.key});

  @override
  State<Day15PDHal1> createState() => _Day15PDHal1State();
}

class _Day15PDHal1State extends State<Day15PDHal1> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController kotadomController = TextEditingController();

  @override
  //  controller: emailController,
  // onChanged: (value) {
  //   setState(() {});
  // },
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 12,
            children: [
              Text(
                "Formulir Pendaftaran Kelas Flutter",
                style: TextStyle(
                  fontFamily: "Teko",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              Row(children: [Text('Nama Lengkap')]),
              TextFormField(
                hintText: "Masukkan Nama",
                controller: nameController,
                onChanged: (p0) {
                  setState(() {});
                },
              ),
              Row(children: [Text('Email')]),
              TextFormField(
                hintText: "Masukkan Email",
                controller: emailController,
                onChanged: (p0) {
                  setState(() {});
                },
              ),
              Row(children: [Text('No. Handhpone')]),
              TextFormField(
                hintText: "Masukkan Phone",
                controller: phoneController,
                onChanged: (p0) {
                  setState(() {});
                },
              ),
              Row(children: [Text('Kota Domisili')]),
              TextFormField(
                hintText: "Masukkan Kota Domisili",
                controller: kotadomController,
                onChanged: (p0) {
                  setState(() {});
                },
              ),
              Text(
                nameController.text,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                emailController.text,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                phoneController.text,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                kotadomController.text,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Konfirmasi"),
                          content: Text(
                            "Apakah data yang Anda masukkan sudah benar? ",
                          ),
                          actions: [
                            TextButton(
                              child: Text("Batal"),
                              onPressed: () {
                                Navigator.of(context).pop();
                                // tutup dialog
                              },
                            ),
                            ElevatedButton(
                              child: Text("Lanjut"),
                              onPressed: () {
                                Navigator.of(context).pop();
                                // tutup dialog
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => HalamanKonfirmasi(
                                      name: nameController.text,
                                      kota: kotadomController.text,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                      // context.push(
                      //   Day15HomeB(

                      //     email: emailController.text,
                    );
                  },
                  child: Text("Daftar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
