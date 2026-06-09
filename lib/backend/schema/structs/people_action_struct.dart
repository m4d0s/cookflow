// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeopleActionStruct extends BaseStruct {
  PeopleActionStruct({
    String? name,
    MealAction? type,
  })  : _name = name,
        _type = type;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "type" field.
  MealAction? _type;
  MealAction? get type => _type;
  set type(MealAction? val) => _type = val;

  bool hasType() => _type != null;

  static PeopleActionStruct fromMap(Map<String, dynamic> data) =>
      PeopleActionStruct(
        name: data['name'] as String?,
        type: data['type'] is MealAction
            ? data['type']
            : deserializeEnum<MealAction>(data['type']),
      );

  static PeopleActionStruct? maybeFromMap(dynamic data) => data is Map
      ? PeopleActionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'type': _type?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static PeopleActionStruct fromSerializableMap(Map<String, dynamic> data) =>
      PeopleActionStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        type: deserializeParam<MealAction>(
          data['type'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'PeopleActionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PeopleActionStruct &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([name, type]);
}

PeopleActionStruct createPeopleActionStruct({
  String? name,
  MealAction? type,
}) =>
    PeopleActionStruct(
      name: name,
      type: type,
    );
