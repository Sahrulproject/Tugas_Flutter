import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key, required bool appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFIL SAYA", style: TextStyle(fontFamily: "BebasNeue")),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      //backgroundColor: Colors.black,
      body: Column(
        //MainAxis center untuk posisi ketengah
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAligntment: MainAxisAlignment.end,
        // mainAxisAligntment: MainAxisAlignment.spaceBetween,
        // mainAxisAlignment: MainAxisAlinment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Muhammad Sahrul Hakim',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          // Baris 2 : Lokasi
          Row(
            children: <Widget>[
              Icon(Icons.location_on, color: Colors.red),
              SizedBox(width: 5.0),
              Text(
                'Jakarta, Indonesia',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          // Baris 3 : Dekripsi Singkat
          Text(
            'I am a fresh graduate of informatics who enjoys being a web developer. My skills include HTML5, CSS3, Javascript and PHP. I really like new experiences and challenges.',
            style: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
        ],
      ),
    );
  }
}
