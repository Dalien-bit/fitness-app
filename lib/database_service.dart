// import 'dart:async';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import './data/record.dart';

// class DatabaseService {
//   static final DatabaseService instance = DatabaseService._init();

//   static Database? _database;

//   DatabaseService._init();

//   Future<Database> get database async {
//     if (_database != null) return _database!;

//     _database = await _initDB('records.db');
//     return _database!;
//   }

//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);

//     return await openDatabase(path, version: 1, onCreate: _createDB);
//   }

//   Future _createDB(Database db, int version) async {
//     final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
//     final textType = 'TEXT NOT NULL';
//     final boolType = 'BOOLEAN NOT NULL';
//     final intType = 'INTEGER NOT NULL';

//     await db.execute('''
//   CREATE TABLE $tableRecords(
//     ${RecordFields.id} $idType,
//     ${RecordFields.exIsDone} $boolType,
//     ${RecordFields.amountOfCaloriesBurnt} $intType,
//     ${RecordFields.totalMinutesOfExerciseDone} $intType,
//     ${RecordFields.totalStreaks} $intType,
//     ${RecordFields.createdTime} $textType,

//   )  
//     ''');
//   }

//   Future<Record> create(Record record) async {
//     final db = await instance.database;

//     final id = await db.insert(tableRecords, record.toJson());
//     return record.copy(id: id);
//   }

//   Future<Record?> readRecord(int id) async {
//     final db = await instance.database;

//     final maps = await db.query(
//       tableRecords,
//       columns: RecordFields.values,
//       where: '${RecordFields.id} = ?',
//       whereArgs: [id],
//     );
//     if (maps.isNotEmpty) {
//       return Record.fromJson(maps.first);
//     } else {
//       return null;
//     }
//   }

//   Future<int> insert(Record record) async {
//     final db = await instance.database;

//     int count = await db.rawInsert(
//         'INSERT INTO $tableRecords(${RecordFields.id}, ${RecordFields.exIsDone}, ${RecordFields.amountOfCaloriesBurnt}, ${RecordFields.totalMinutesOfExerciseDone}, ${RecordFields.totalStreaks}, ${RecordFields.createdTime}) VALUES(${record.id}, 1234, 456.789)');

//     return count;
//   }

//   Future<List<Record>> readAllNotes() async {
//     final db = await instance.database;
//     final orderBy = '${RecordFields.createdTime} ASC';
//     final result = await db.query(tableRecords, orderBy: orderBy);
//     return result.map((json) => Record.fromJson(json)).toList();
//   }

//   Future<int> updateCal(int id, int acb) async {
//     final db = await instance.database;

//     int count = await db.rawUpdate(
//         'UPDATE $tableRecords SET ${RecordFields.amountOfCaloriesBurnt} = ?, WHERE ${RecordFields.id} = ?',
//         ['tableRecords', acb, id]);
//     return count;
//   }

//   Future<int> updateTime(int id, int time) async {
//     final db = await instance.database;

//     int count = await db.rawUpdate(
//         'UPDATE $tableRecords SET ${RecordFields.totalMinutesOfExerciseDone} = ? WHERE ${RecordFields.id} = ?',
//         ['tableRecords', time, id]);

//     return count;
//   }

//   Future<int> delete(int id) async {
//     final db = await instance.database;

//     return await db.delete(
//       tableRecords,
//       where: '${RecordFields.id} = ?',
//       whereArgs: [id],
//     );
//   }

//   Future close() async {
//     final db = await instance.database;

//     db.close();
//   }
// }
