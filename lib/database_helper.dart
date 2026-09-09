import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _db;

  //Abre ou cria, se existe o arquivo no banco de dados
  static Future<Database> abrirBanco() async {
    final caminho = join(await getDatabasesPath(), 'tarefas.db');

    return openDatabase(
      caminho,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE tarefas ('
          'id INTEGER PRIMARY KEY AUTOINCREMENT,'
          'titulo TEXT'
          'situacao INTEGER' //0 = false, 1 = true
          ')',
        );
      },
    );
  }

  //Getter que devolve o banco de dados já aberto, ou abre se ainda não existe
  static Future<Database> get database async {
    _db ??= await abrirBanco();
    return _db!;
  }

  //READ, Buscar todas as tarefas salvas no Banco
  static Future<List<Map<String, dynamic>>> buscarTarefas() async {
    final db = await DatabaseHelper.database;
    return db.query('tarefas'); //SELECT * FROM TAREFAS
  }

  //CREATE: Inserir uma nova tarefa no banco.
  static Future<void> inserirTarefa(
    String titulo,
  ) async {
    final db = await DatabaseHelper.database;
    await db.insert('tarefas', {
      'titulo': titulo,
      'situacao': 0,
    });
  }
}
