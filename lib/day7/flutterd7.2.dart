import 'package:flutter/material.dart';

class Day7T4GridView extends StatelessWidget {
  const Day7T4GridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sahrulinde House"), centerTitle: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: List.generate(6, (index) {
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/im/foto${index + 1}.jpg'),
                          fit: BoxFit.cover,
                        ),
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

            SizedBox(height: 24),

            // PRODUK LIST
            Text(
              "Produk Tersedia",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),

            ListTile(
              leading: Icon(Icons.bedroom_parent),
              title: Text("Kamar Deluxe"),
              subtitle: Text("Rp 300.000 / malam"),
            ),
            ListTile(
              leading: Icon(Icons.bed),
              title: Text("Kamar Standard"),
              subtitle: Text("Rp 200.000 / malam"),
            ),
            ListTile(
              leading: Icon(Icons.chair),
              title: Text("Kamar Family"),
              subtitle: Text("Rp 450.000 / malam"),
            ),
            ListTile(
              leading: Icon(Icons.bathtub),
              title: Text("Kamar Mandi Dalam"),
              subtitle: Text("Rp 350.000 / malam"),
            ),
            ListTile(
              leading: Icon(Icons.emoji_food_beverage),
              title: Text("Paket Sarapan"),
              subtitle: Text("Rp 50.000 / pax"),
            ),
          ],
        ),
      ),
    );
  }
}
