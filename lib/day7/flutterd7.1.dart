import 'package:flutter/material.dart';

final List<Color> warnaKotak = [
  const Color.fromARGB(255, 0, 0, 0),
  const Color.fromARGB(255, 255, 255, 255),
  const Color.fromARGB(255, 0, 0, 0),
  const Color.fromARGB(255, 255, 255, 255),
  const Color.fromARGB(255, 0, 0, 0),
  const Color.fromARGB(255, 255, 255, 255),
];

class Day7GridView extends StatelessWidget {
  const Day7GridView({super.key});
  static const id = "/Day7GridView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form GridView",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 164, 196, 189),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // FORMULIR
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Nama",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "No. HP",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 12),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Deskripsi",
                      prefixIcon: Icon(Icons.description),
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // GALERI
            Text(
              "Pilihan Kamar",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),

            GridView.count(
              crossAxisCount: 3, // atau 2 sesuai kebutuhan
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: List.generate(6, (index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: warnaKotak[index],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      left: 8,
                      child: Text(
                        'Gambar ${index + 1}',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 248, 248, 248),
                          fontWeight: FontWeight.bold,
                          shadows: [Shadow(color: Colors.black, blurRadius: 2)],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
