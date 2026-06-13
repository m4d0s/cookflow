// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyPlanStruct extends BaseStruct {
  DailyPlanStruct({
    int? id,
    DateTime? date,
    List<MealEntryStruct>? completedRecipes,
    NutritionsStruct? done,
    NutritionsStruct? goal,
    int? waterCups,
  })  : _id = id,
        _date = date,
        _completedRecipes = completedRecipes,
        _done = done,
        _goal = goal,
        _waterCups = waterCups;

  // "id" field.
  int? _id;
  int get id => _id ?? -1;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "completedRecipes" field.
  List<MealEntryStruct>? _completedRecipes;
  List<MealEntryStruct> get completedRecipes => _completedRecipes ?? const [];
  set completedRecipes(List<MealEntryStruct>? val) => _completedRecipes = val;

  void updateCompletedRecipes(Function(List<MealEntryStruct>) updateFn) {
    updateFn(_completedRecipes ??= []);
  }

  bool hasCompletedRecipes() => _completedRecipes != null;

  // "done" field.
  NutritionsStruct? _done;
  NutritionsStruct get done => _done ?? NutritionsStruct();
  set done(NutritionsStruct? val) => _done = val;

  void updateDone(Function(NutritionsStruct) updateFn) {
    updateFn(_done ??= NutritionsStruct());
  }

  bool hasDone() => _done != null;

  // "goal" field.
  NutritionsStruct? _goal;
  NutritionsStruct get goal => _goal ?? NutritionsStruct();
  set goal(NutritionsStruct? val) => _goal = val;

  void updateGoal(Function(NutritionsStruct) updateFn) {
    updateFn(_goal ??= NutritionsStruct());
  }

  bool hasGoal() => _goal != null;

  // "waterCups" field.
  int? _waterCups;
  int get waterCups => _waterCups ?? 0;
  set waterCups(int? val) => _waterCups = val;

  void incrementWaterCups(int amount) => waterCups = waterCups + amount;

  bool hasWaterCups() => _waterCups != null;

  static DailyPlanStruct fromMap(Map<String, dynamic> data) => DailyPlanStruct(
        id: castToType<int>(data['id']),
        date: data['date'] as DateTime?,
        completedRecipes: getStructList(
          data['completedRecipes'],
          MealEntryStruct.fromMap,
        ),
        done: data['done'] is NutritionsStruct
            ? data['done']
            : NutritionsStruct.maybeFromMap(data['done']),
        goal: data['goal'] is NutritionsStruct
            ? data['goal']
            : NutritionsStruct.maybeFromMap(data['goal']),
        waterCups: castToType<int>(data['waterCups']),
      );

  static DailyPlanStruct? maybeFromMap(dynamic data) => data is Map
      ? DailyPlanStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'date': _date,
        'completedRecipes': _completedRecipes?.map((e) => e.toMap()).toList(),
        'done': _done?.toMap(),
        'goal': _goal?.toMap(),
        'waterCups': _waterCups,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'completedRecipes': serializeParam(
          _completedRecipes,
          ParamType.DataStruct,
          isList: true,
        ),
        'done': serializeParam(
          _done,
          ParamType.DataStruct,
        ),
        'goal': serializeParam(
          _goal,
          ParamType.DataStruct,
        ),
        'waterCups': serializeParam(
          _waterCups,
          ParamType.int,
        ),
      }.withoutNulls;

  static DailyPlanStruct fromSerializableMap(Map<String, dynamic> data) =>
      DailyPlanStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        completedRecipes: deserializeStructParam<MealEntryStruct>(
          data['completedRecipes'],
          ParamType.DataStruct,
          true,
          structBuilder: MealEntryStruct.fromSerializableMap,
        ),
        done: deserializeStructParam(
          data['done'],
          ParamType.DataStruct,
          false,
          structBuilder: NutritionsStruct.fromSerializableMap,
        ),
        goal: deserializeStructParam(
          data['goal'],
          ParamType.DataStruct,
          false,
          structBuilder: NutritionsStruct.fromSerializableMap,
        ),
        waterCups: deserializeParam(
          data['waterCups'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DailyPlanStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DailyPlanStruct &&
        id == other.id &&
        date == other.date &&
        listEquality.equals(completedRecipes, other.completedRecipes) &&
        done == other.done &&
        goal == other.goal &&
        waterCups == other.waterCups;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, date, completedRecipes, done, goal, waterCups]);
}

DailyPlanStruct createDailyPlanStruct({
  int? id,
  DateTime? date,
  NutritionsStruct? done,
  NutritionsStruct? goal,
  int? waterCups,
}) =>
    DailyPlanStruct(
      id: id,
      date: date,
      done: done ?? NutritionsStruct(),
      goal: goal ?? NutritionsStruct(),
      waterCups: waterCups,
    );
