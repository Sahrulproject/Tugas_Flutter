// import 'package:flutter/material.dart';
// import 'package:ppkd_b_3/day23/model/user_model.dart';

// class DetailApi extends StatelessWidget {
//   final Welcome user;

//   const DetailApi({super.key, required this.user});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(user.name ?? "Detail"),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Gambar
//             Center(
//               child: Image.network(
//                 user.image ?? "",
//                 height: 150,
//                 errorBuilder: (context, error, stackTrace) =>
//                     const Icon(Icons.broken_image, size: 100),
//               ),
//             ),
//             const SizedBox(height: 20),

//             // Nama Coin
//             Text(
//               user.name ?? "No Name",
//               style: const TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(height: 10),

//             // Harga Coin
//             Text(
//               "Price: Rp ${user.currentPrice.toString()}",
//               style: const TextStyle(fontSize: 18, color: Colors.green),
//             ),

//             const SizedBox(height: 10),

//             // ID Coin
//             Text(
//               "ID: ${user.id ?? '-'}",
//               style: const TextStyle(fontSize: 16),
//             ),

//             const SizedBox(height: 10),

//             // Symbol Coin
//             Text(
//               "Symbol: ${user.symbol ?? '-'}",
//               style: const TextStyle(fontSize: 16),
//             ),

//             const SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:ppkd_b_3/day23/model/user_model.dart';

class DetailApi extends StatelessWidget {
  final Welcome user;
  // final Demographic animegenre;

  const DetailApi({
    super.key,
    required this.user,
    // required this.animegenre,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name ?? 'Crypto Detail'),
        // backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Card(
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(user.image ?? ""),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "# ${user.marketCapRank}",
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Name: ${user.name}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Market Cap: \$${user.marketCap}",
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Price: \$${user.currentPrice}",
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Volume (24h): \$${user.totalVolume}",
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "ATH Date: \$${user.athDate}", //ATH (All-Time High)
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "ATL Date: \$${user.atlDate}", //ATL (ALL-Time Low)
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
