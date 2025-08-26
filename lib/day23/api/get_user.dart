import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_b_3/day23/model/user_model.dart';

Future<List<Welcome>> getUser() async {
  final response = await http.get(
    Uri.parse("https://api.coingecko.com/api/v3/coins/markets?vs_currency=idr"),
  );
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => Welcome.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat data");
  }
}
