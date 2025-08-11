import 'package:flutter/material.dart';

class Flutter2 extends StatelessWidget {
  const Flutter2({super.key, required bool appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PROFIL LENGKAP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 254, 114, 83),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/im/profile.jpeg"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Muhammad Sahrul Hakim",
                    style: TextStyle(fontSize: 30, fontFamily: "BebasNeue"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 100, 72),
                  border: Border.all(
                    color: const Color.fromARGB(255, 230, 158, 3),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 145),
                    Text(
                      "sahrulhakim15@gmail.com ",
                      style: TextStyle(
                        fontFamily: "BebasNeue",
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 100, 72),
                  border: Border.all(
                    color: const Color.fromARGB(255, 230, 158, 3),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    Spacer(),
                    Text("0821-2445-1168", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        color: const Color.fromARGB(255, 177, 134, 16),
                        child: Center(
                          child: Text(
                            "Postingan",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        color: const Color.fromARGB(255, 150, 52, 6),
                        child: Center(
                          child: Text(
                            "Followers",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Teko",
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Bachelor of Informatics Engineering at Indraprasta PGRI University.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontFamily: "Teko"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 254, 114, 83),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
