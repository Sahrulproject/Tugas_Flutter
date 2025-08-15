import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Peliharaan {
  final String name;
  final String tipe;
  final String warna;
  final String city;

  Peliharaan({
    required this.name,
    required this.tipe,
    required this.warna,
    required this.city,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tipe': tipe,
      'warna': warna,
      'city': city,
    };
  }

  factory Peliharaan.fromMap(Map<String, dynamic> map) {
    return Peliharaan(
      name: map['name'] as String,
      tipe: map['tipe'] as String,
      warna: map['warna'] as String,
      city: map['city'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Peliharaan.fromJson(String source) =>
      Peliharaan.fromMap(json.decode(source) as Map<String, dynamic>);
}
