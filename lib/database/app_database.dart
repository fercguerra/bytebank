import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../model/contact.dart';

Future<Database> createDatabase() {
  //criar o banco de dados

  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE  contacts('
          'id INTEGER PRIMARY KEY,  '
          'NAME text, '
          'account_number INTEGER)');
    }, version: 1);
  });
}

Future<int> save(Contact contact) {
  return createDatabase().then((db) {
    final Map<String, dynamic> contactMap = Map();
   
    contactMap['name'] = contact.name;
    contactMap['account_number'] = contact.accountNumber;
    return db.insert('contacts', contactMap);
  });
}

Future<List> findAll() async {
  return createDatabase().then((db) {
    return db.query('contacts').then((maps) {
      final List contacts = [];
      for (Map<String, dynamic> map in maps) {
        final Contact contact = Contact(
          map['id'],
          map['name'],
          map['account_number'],
        );
        contacts.add(contact);
      }
      return contacts;
    });
  });
}