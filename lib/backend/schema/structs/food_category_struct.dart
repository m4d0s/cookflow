// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodCategoryStruct extends BaseStruct {
  FoodCategoryStruct({
    String? name,
    Food? category,
  })  : _name = name,
        _category = category;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "category" field.
  Food? _category;
  Food get category => _category ?? Food.all;
  set category(Food? val) => _category = val;

  bool hasCategory() => _category != null;

  static FoodCategoryStruct fromMap(Map<String, dynamic> data) =>
      FoodCategoryStruct(
        name: data['name'] as String?,
        category: data['category'] is Food
            ? data['category']
            : deserializeEnum<Food>(data['category']),
      );

  static FoodCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'category': _category?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static FoodCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      FoodCategoryStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam<Food>(
          data['category'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'FoodCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodCategoryStruct &&
        name == other.name &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality().hash([name, category]);
}

FoodCategoryStruct createFoodCategoryStruct({
  String? name,
  Food? category,
}) =>
    FoodCategoryStruct(
      name: name,
      category: category,
    );
