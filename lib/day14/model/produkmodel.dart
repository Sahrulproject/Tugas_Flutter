// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class ProdukObat {
  final String nama;
  final int price;
  final Color warna;
  final String gambar;
  ProdukObat(
      {required this.nama,
      required this.price,
      required this.warna,
      required this.gambar});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'price': price,
      'warna': warna.value,
      'gambar': gambar
    };
  }

  factory ProdukObat.fromMap(Map<String, dynamic> map) {
    return ProdukObat(
      nama: map['nama'] as String,
      price: map['price'] as int,
      warna: Color(map['warna'] as int),
      gambar: map['gambar'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukObat.fromJson(String source) =>
      ProdukObat.fromMap(json.decode(source) as Map<String, dynamic>);
}
