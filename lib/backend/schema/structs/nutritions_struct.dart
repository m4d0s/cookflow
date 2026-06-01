// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NutritionsStruct extends BaseStruct {
  NutritionsStruct({
    double? calories,
    double? protein,
    double? fats,
    double? carbs,
  })  : _calories = calories,
        _protein = protein,
        _fats = fats,
        _carbs = carbs;

  // "calories" field.
  double? _calories;
  double get calories => _calories ?? 99.0;
  set calories(double? val) => _calories = val;

  void incrementCalories(double amount) => calories = calories + amount;

  bool hasCalories() => _calories != null;

  // "protein" field.
  double? _protein;
  double get protein => _protein ?? 0.0;
  set protein(double? val) => _protein = val;

  void incrementProtein(double amount) => protein = protein + amount;

  bool hasProtein() => _protein != null;

  // "fats" field.
  double? _fats;
  double get fats => _fats ?? 0.0;
  set fats(double? val) => _fats = val;

  void incrementFats(double amount) => fats = fats + amount;

  bool hasFats() => _fats != null;

  // "carbs" field.
  double? _carbs;
  double get carbs => _carbs ?? 0.0;
  set carbs(double? val) => _carbs = val;

  void incrementCarbs(double amount) => carbs = carbs + amount;

  bool hasCarbs() => _carbs != null;

  static NutritionsStruct fromMap(Map<String, dynamic> data) =>
      NutritionsStruct(
        calories: castToType<double>(data['calories']),
        protein: castToType<double>(data['protein']),
        fats: castToType<double>(data['fats']),
        carbs: castToType<double>(data['carbs']),
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
          ParamType.double,
        ),
        'protein': serializeParam(
          _protein,
          ParamType.double,
        ),
        'fats': serializeParam(
          _fats,
          ParamType.double,
        ),
        'carbs': serializeParam(
          _carbs,
          ParamType.double,
        ),
      }.withoutNulls;

  static NutritionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      NutritionsStruct(
        calories: deserializeParam(
          data['calories'],
          ParamType.double,
          false,
        ),
        protein: deserializeParam(
          data['protein'],
          ParamType.double,
          false,
        ),
        fats: deserializeParam(
          data['fats'],
          ParamType.double,
          false,
        ),
        carbs: deserializeParam(
          data['carbs'],
          ParamType.double,
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
  double? calories,
  double? protein,
  double? fats,
  double? carbs,
}) =>
    NutritionsStruct(
      calories: calories,
      protein: protein,
      fats: fats,
      carbs: carbs,
    );
