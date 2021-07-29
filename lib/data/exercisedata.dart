// import './record.dart';

class ExerciseData {
  String name;
  int duration;
  List<String> steps;
  String description;
  String difficulty;
  String imageLocation;
  bool isDone;
  int id;

  ExerciseData(
    this.duration,
    this.name,
    this.steps,
    this.description,
    this.difficulty,
    this.imageLocation,
    this.isDone,
    this.id,
  );
}

// final List<Record> myRecord = [
//   Record(
//     id: 1,
//     exIsDone: false,
//     amountOfCaloriesBurnt: 20,
//     totalMinutesOfExerciseDone: 10,
//     totalStreaks: 0,
//     createdTime: DateTime.now(),
//   )
// ];

final List<ExerciseData> listOfExercises = [
  ExerciseData(
    1,
    'Push UPs',
    [
      'Get down on all fours, placing your hands slightly wider than your shoulders',
      'Straighten your arms and legs',
      'Lower your body until your chest nearly touches the floor',
      'Pause, then push yourself back up',
      'REPEAT',
    ],
    'By raising and lowering the body using the arms, push-ups exercise the pectoral muscles, triceps, and anterior deltoids, with ancillary benefits to the rest of the deltoids, serratus anterior, coracobrachialis and the midsection as a whole. Push-ups are a basic exercise used in civilian athletic training or physical education and commonly in military physical training.',
    'easy',
    'assets/images/pushup.png',
    false,
    1,
  ),
  ExerciseData(
    20,
    'name2',
    [
      'step1',
      'step2',
    ],
    'kushdgvkhdhhregebhebbbe  i hrhriur i ieirirev verbuvuevoer',
    'intermediate',
    'assets/images/pushup.png',
    false,
    2,
  ),
  ExerciseData(
    20,
    'name3',
    [
      'step1',
      'step2',
    ],
    'hdfvhfdh  bhahbbhavbrer revrrvuuvrevrebh erahbrbuhvuvbhr er',
    'advanced',
    'assets/images/pushup.png',
    false,
    3,
  ),
  ExerciseData(
    20,
    'name4',
    [
      'step1',
      'step2',
    ],
    'hfahhvhavhhvadbfbvbdfbfdbvfbfbfvbvbvnvvh',
    'easy',
    'assets/images/pushup.png',
    false,
    4,
  ),
];
