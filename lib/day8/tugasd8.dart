import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  int counter = 0;
  String name = "Muhammad Sahrul Hakim";
  String text = "Don't Just Look at me From the Outside..";
  String suka = "Disukai";
  bool showIcon = true;
  bool showName = true;
  bool showText = true;
  bool showGambar = true;
  bool liked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tambahan: dua tombol FAB di kanan bawah (tambah & kurang)
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btnKurang",
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            child: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                if (counter > 0) counter--;
              });
              print("Counter dikurangi: $counter");
            },
          ),
          const SizedBox(width: 12),
          FloatingActionButton(
            heroTag: "btnTambah",
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter++;
              });
              print("Counter ditambah: $counter");
            },
          ),
        ],
      ),

      appBar: AppBar(
        title: const Text(
          "Task 5 Flutter Interaction Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 155, 219, 103),
        centerTitle: false,
      ),
      backgroundColor: const Color.fromARGB(255, 170, 228, 123),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Tampilkan Nama
            Card(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      "ElavatedButton | Tampilkan Nama",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showName = !showName;
                        });
                      },
                      child: Text(
                        showName ? "Sembunyikan" : "Tampilkan",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    const SizedBox(height: 10),
                    if (showName)
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Icon Button
            Card(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  children: [
                    const Text(
                      "Icon Button",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          liked = !liked;
                        });
                      },
                      icon: Icon(Icons.favorite),
                      color: liked ? Colors.red : Colors.white,
                    ),
                    Text(
                      liked ? "Disukai" : " ",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Text Button
            Card(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      "Text Button",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          showText = !showText;
                        });
                      },
                      child: Text(
                        showText ? "Sembunyikan" : "Lihat Selengkapnya",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    if (showText)
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          text,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Counter Display
            Text(
              "FloatingActionButton",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Card(
              color: Colors.green,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Counter: $counter',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            Text(
              "Dream Home | InkWell",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            // InkWell dengan Gambar
            Card(
              color: Colors.green,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () {
                  print("Kotak disentuh");
                  setState(() {
                    showGambar = !showGambar;
                  });
                },
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: showGambar
                      ? Image.asset(
                          "assets/im/dreamhome.jpg",
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        )
                      : const SizedBox(height: 200),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Gesture Detector
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: GestureDetector(
                onTap: () => print("Aww. Don't Touch Me !"),
                onDoubleTap: () =>
                    print("Aww.. Aww.. Please! Don't Touch Me !!"),
                onLongPress: () => print("Shhhttt.."),
                child: Container(
                  height: 48,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 155, 219, 103),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Touch Me",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
