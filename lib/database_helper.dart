import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _db;

  static Future<Database> abrirBanco() async {
    final caminho = join(await getDatabasesPath(), 'tarefas.db');

    return openDatabase(
      caminho,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE tarefas ('
          'id INTEGER PRIMEARY KEY AUTOINCREMENT,'
          'titulo TEXT'
          'situacao INTEGER' //0 = false, 1 = true
          ')',
        );
      },
    );
  }

  static Future<Database> get database async {
    _db ??= await abrirBanco();
    return _db!;
  }
}
