// import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:ppkd_b_3/day16/model/user.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'peliharaan.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY, email TEXT, password TEXT, name TEXT)',
        );
      },
      version: 1,
    );
  }

  static Future<void> registerPeliharaan(Peliharaan peliharaan) async {
    final db = await databaseHelper();
    await db.insert(
      'peliharaan',
      peliharaan.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // static Future<Peliharaan?> loginPeliharaan(String email, String password) async {
  //   final db = await databaseHelper();
  //   final List<Map<String, dynamic>> results = await db.query(
  //     'peliharaan', // pastikan ini tabel yang benar
  //     where: 'email = ? AND password = ?',
  //     whereArgs: [email, password],
  //   );

  //   if (results.isNotEmpty) {
  //     return Peliharaan.fromMap(results.first);
  //   }
  //   return null;
  // }

  static Future<List<Peliharaan>> getAllPeliharaan() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> results = await db.query('kostan');
    return results.map((e) => Peliharaan.fromMap(e)).toList();
  }
}
