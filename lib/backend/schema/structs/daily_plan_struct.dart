// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyPlanStruct extends BaseStruct {
  DailyPlanStruct({
    DateTime? date,
    List<MealEntryStruct>? completedRecipes,
    NutritionsStruct? done,
    NutritionsStruct? goal,
    int? waterMl,
  })  : _date = date,
        _completedRecipes = completedRecipes,
        _done = done,
        _goal = goal,
        _waterMl = waterMl;

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

  // "waterMl" field.
  int? _waterMl;
  int get waterMl => _waterMl ?? 0;
  set waterMl(int? val) => _waterMl = val;

  void incrementWaterMl(int amount) => waterMl = waterMl + amount;

  bool hasWaterMl() => _waterMl != null;

  static DailyPlanStruct fromMap(Map<String, dynamic> data) => DailyPlanStruct(
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
        waterMl: castToType<int>(data['waterMl']),
      );

  static DailyPlanStruct? maybeFromMap(dynamic data) => data is Map
      ? DailyPlanStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'completedRecipes': _completedRecipes?.map((e) => e.toMap()).toList(),
        'done': _done?.toMap(),
        'goal': _goal?.toMap(),
        'waterMl': _waterMl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'waterMl': serializeParam(
          _waterMl,
          ParamType.int,
        ),
      }.withoutNulls;

  static DailyPlanStruct fromSerializableMap(Map<String, dynamic> data) =>
      DailyPlanStruct(
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
        waterMl: deserializeParam(
          data['waterMl'],
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
        date == other.date &&
        listEquality.equals(completedRecipes, other.completedRecipes) &&
        done == other.done &&
        goal == other.goal &&
        waterMl == other.waterMl;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([date, completedRecipes, done, goal, waterMl]);
}

DailyPlanStruct createDailyPlanStruct({
  DateTime? date,
  NutritionsStruct? done,
  NutritionsStruct? goal,
  int? waterMl,
}) =>
    DailyPlanStruct(
      date: date,
      done: done ?? NutritionsStruct(),
      goal: goal ?? NutritionsStruct(),
      waterMl: waterMl,
    );
