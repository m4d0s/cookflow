// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NutritionsStruct extends BaseStruct {
  NutritionsStruct({
    int? calories,
    int? protein,
    int? fats,
    int? carbs,
  })  : _calories = calories,
        _protein = protein,
        _fats = fats,
        _carbs = carbs;

  // "calories" field.
  int? _calories;
  int get calories => _calories ?? 99;
  set calories(int? val) => _calories = val;

  void incrementCalories(int amount) => calories = calories + amount;

  bool hasCalories() => _calories != null;

  // "protein" field.
  int? _protein;
  int get protein => _protein ?? 0;
  set protein(int? val) => _protein = val;

  void incrementProtein(int amount) => protein = protein + amount;

  bool hasProtein() => _protein != null;

  // "fats" field.
  int? _fats;
  int get fats => _fats ?? 0;
  set fats(int? val) => _fats = val;

  void incrementFats(int amount) => fats = fats + amount;

  bool hasFats() => _fats != null;

  // "carbs" field.
  int? _carbs;
  int get carbs => _carbs ?? 0;
  set carbs(int? val) => _carbs = val;

  void incrementCarbs(int amount) => carbs = carbs + amount;

  bool hasCarbs() => _carbs != null;

  static NutritionsStruct fromMap(Map<String, dynamic> data) =>
      NutritionsStruct(
        calories: castToType<int>(data['calories']),
        protein: castToType<int>(data['protein']),
        fats: castToType<int>(data['fats']),
        carbs: castToType<int>(data['carbs']),
      );

  static NutritionsStruct? maybeFromMap(dynamic data) => data is Map
      ? NutritionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'calories': _calories,
        'protein': _protein,
        'fats': _fats,
        'carbs': _carbs,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'calories': serializeParam(
          _calories,
          ParamType.int,
        ),
        'protein': serializeParam(
          _protein,
          ParamType.int,
        ),
        'fats': serializeParam(
          _fats,
          ParamType.int,
        ),
        'carbs': serializeParam(
          _carbs,
          ParamType.int,
        ),
      }.withoutNulls;

  static NutritionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NutritionsStruct(
        calories: deserializeParam(
          data['calories'],
          ParamType.int,
          false,
        ),
        protein: deserializeParam(
          data['protein'],
          ParamType.int,
          false,
        ),
        fats: deserializeParam(
          data['fats'],
          ParamType.int,
          false,
        ),
        carbs: deserializeParam(
          data['carbs'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'NutritionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NutritionsStruct &&
        calories == other.calories &&
        protein == other.protein &&
        fats == other.fats &&
        carbs == other.carbs;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([calories, protein, fats, carbs]);
}

NutritionsStruct createNutritionsStruct({
  int? calories,
  int? protein,
  int? fats,
  int? carbs,
}) =>
    NutritionsStruct(
      calories: calories,
      protein: protein,
      fats: fats,
      carbs: carbs,
    );
