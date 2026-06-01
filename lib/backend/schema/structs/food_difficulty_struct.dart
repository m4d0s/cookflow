// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodDifficultyStruct extends BaseStruct {
  FoodDifficultyStruct({
    String? name,
    Hardness? difficult,
  })  : _name = name,
        _difficult = difficult;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "difficult" field.
  Hardness? _difficult;
  Hardness? get difficult => _difficult;
  set difficult(Hardness? val) => _difficult = val;

  bool hasDifficult() => _difficult != null;

  static FoodDifficultyStruct fromMap(Map<String, dynamic> data) =>
      FoodDifficultyStruct(
        name: data['name'] as String?,
        difficult: data['difficult'] is Hardness
            ? data['difficult']
            : deserializeEnum<Hardness>(data['difficult']),
      );

  static FoodDifficultyStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodDifficultyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'difficult': _difficult?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'difficult': serializeParam(
          _difficult,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static FoodDifficultyStruct fromSerializableMap(Map<String, dynamic> data) =>
      FoodDifficultyStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        difficult: deserializeParam<Hardness>(
          data['difficult'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'FoodDifficultyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodDifficultyStruct &&
        name == other.name &&
        difficult == other.difficult;
  }

  @override
  int get hashCode => const ListEquality().hash([name, difficult]);
}

FoodDifficultyStruct createFoodDifficultyStruct({
  String? name,
  Hardness? difficult,
}) =>
    FoodDifficultyStruct(
      name: name,
      difficult: difficult,
    );
