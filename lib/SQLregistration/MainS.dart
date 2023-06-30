import 'package:sqflite/sqflite.dart' as sql;


class sql_registration{

  //create database  db()
  static Future<sql.Database> db() async {
   
    return sql.openDatabase(
      'mydatabase.db', 
      version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTables(database);});


  }

 ///create table with nametodo and column name as title and task
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE registration(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        Email TEXT,
        username TEXT,
        password TEXT,
        confirm password TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }

  static datass(, test, String text2, String text3) {}
}
 
