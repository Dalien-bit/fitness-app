// import 'dart:core';

// final String tableRecords = 'records';

// class RecordFields {
//   static final List<String> values = [
//     id,
//     exIsDone,
//     amountOfCaloriesBurnt,
//     totalMinutesOfExerciseDone,
//     totalStreaks,
//     createdTime,
//   ];

//   static final String id = '_id';
//   static final String exIsDone = 'exIsDone';
//   static final String amountOfCaloriesBurnt = 'amountOfCaloriesBurnt';
//   static final String totalMinutesOfExerciseDone = 'totalMinutesOfExerciseDone';
//   static final String totalStreaks = 'totalStreaks';
//   static final String createdTime = 'createdTime';
// }

// class Record {
//   final int? id;
//   final bool exIsDone;
//   final int amountOfCaloriesBurnt;
//   final int totalMinutesOfExerciseDone;
//   final int totalStreaks;
//   final DateTime createdTime;

//   const Record({
//     required this.id,
//     required this.exIsDone,
//     required this.amountOfCaloriesBurnt,
//     required this.totalMinutesOfExerciseDone,
//     required this.totalStreaks,
//     required this.createdTime,
//   });

//   Record copy({
//     int? id,
//     bool? exIsDone,
//     int? amountOfCaloriesBurnt,
//     int? totalMinutesOfExerciseDone,
//     int? totalStreaks,
//     DateTime? createdTime,
//   }) =>
//       Record(
//         id: id ?? this.id,
//         exIsDone: exIsDone ?? this.exIsDone,
//         amountOfCaloriesBurnt:
//             amountOfCaloriesBurnt ?? this.amountOfCaloriesBurnt,
//         totalMinutesOfExerciseDone:
//             totalMinutesOfExerciseDone ?? this.totalMinutesOfExerciseDone,
//         totalStreaks: totalStreaks ?? this.totalStreaks,
//         createdTime: createdTime ?? this.createdTime,
//       );

//   static Record fromJson(Map<String, Object?> json) => Record(
//     id: json[RecordFields.id] as int?,
//     exIsDone: json[RecordFields.exIsDone] == 1,
//     amountOfCaloriesBurnt:  json[RecordFields.amountOfCaloriesBurnt] as int,
//     totalMinutesOfExerciseDone: json[RecordFields.totalMinutesOfExerciseDone] as int,
//     totalStreaks: json[RecordFields.totalStreaks] as int,
//     createdTime: DateTime.parse(json[RecordFields.createdTime] as String),

//   );

//   Map<String, Object?> toJson() => {
//         RecordFields.id: id,
//         RecordFields.exIsDone: exIsDone ? 1 : 0,
//         RecordFields.amountOfCaloriesBurnt: amountOfCaloriesBurnt,
//         RecordFields.totalMinutesOfExerciseDone: totalMinutesOfExerciseDone,
//         RecordFields.totalStreaks: totalStreaks,
//         RecordFields.createdTime: createdTime.toIso8601String(),
//       };
// }
