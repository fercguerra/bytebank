import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void createDatabase() {
  //criar o banco de dados

  getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');
    openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE  contacts('
          'id INTEGER PRIMARY KEY,  '
          'NAME text,'
          'account_number INTEGER)');
    }, version: 1);
  });
}
