// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MealEntryStruct extends BaseStruct {
  MealEntryStruct({
    RecipeStruct? meal,
    DateTime? date,
  })  : _meal = meal,
        _date = date;

  // "meal" field.
  RecipeStruct? _meal;
  RecipeStruct get meal => _meal ?? RecipeStruct();
  set meal(RecipeStruct? val) => _meal = val;

  void updateMeal(Function(RecipeStruct) updateFn) {
    updateFn(_meal ??= RecipeStruct());
  }

  bool hasMeal() => _meal != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  static MealEntryStruct fromMap(Map<String, dynamic> data) => MealEntryStruct(
        meal: data['meal'] is RecipeStruct
            ? data['meal']
            : RecipeStruct.maybeFromMap(data['meal']),
        date: data['date'] as DateTime?,
      );

  static MealEntryStruct? maybeFromMap(dynamic data) => data is Map
      ? MealEntryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'meal': _meal?.toMap(),
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'meal': serializeParam(
          _meal,
          ParamType.DataStruct,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static MealEntryStruct fromSerializableMap(Map<String, dynamic> data) =>
      MealEntryStruct(
        meal: deserializeStructParam(
          data['meal'],
          ParamType.DataStruct,
          false,
          structBuilder: RecipeStruct.fromSerializableMap,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'MealEntryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MealEntryStruct && meal == other.meal && date == other.date;
  }

  @override
  int get hashCode => const ListEquality().hash([meal, date]);
}

MealEntryStruct createMealEntryStruct({
  RecipeStruct? meal,
  DateTime? date,
}) =>
    MealEntryStruct(
      meal: meal ?? RecipeStruct(),
      date: date,
    );
