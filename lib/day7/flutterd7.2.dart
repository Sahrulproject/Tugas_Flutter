import 'package:flutter/material.dart';

class Day7T4GridView extends StatelessWidget {
  const Day7T4GridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View Appart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 56, 128, 60),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 164, 196, 189),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // FORMULIR
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

          SizedBox(height: 24),

          // DAFTAR PRODUK
          Text(
            "Daftar Kamar",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          ListTile(
            leading: Image.asset(
              'assets/im/foto1.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            title: Text(
              "Kamar Deluxe",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Rp 300.000 / malam"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/im/foto2.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            title: Text(
              "Kamar Bathtub",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Rp 350.000 / malam"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/im/foto3.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            title: Text(
              "Kamar King Size",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Rp 400.000 / malam"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/im/foto1.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            title: Text(
              "Kamar Family",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Rp 450.000 / malam"),
          ),
          ListTile(
            leading: Image.asset(
              'assets/im/foto6.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            title: Text(
              "Kamar Super Family",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Rp 500.000 / malam"),
          ),
        ],
      ),
    );
  }
}
