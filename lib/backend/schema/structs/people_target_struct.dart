// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeopleTargetStruct extends BaseStruct {
  PeopleTargetStruct({
    String? name,
    MealTarget? type,
  })  : _name = name,
        _type = type;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "type" field.
  MealTarget? _type;
  MealTarget? get type => _type;
  set type(MealTarget? val) => _type = val;

  bool hasType() => _type != null;

  static PeopleTargetStruct fromMap(Map<String, dynamic> data) =>
      PeopleTargetStruct(
        name: data['name'] as String?,
        type: data['type'] is MealTarget
            ? data['type']
            : deserializeEnum<MealTarget>(data['type']),
      );

  static PeopleTargetStruct? maybeFromMap(dynamic data) => data is Map
      ? PeopleTargetStruct.fromMap(data.cast<String, dynamic>())
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

  static PeopleTargetStruct fromSerializableMap(Map<String, dynamic> data) =>
      PeopleTargetStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        type: deserializeParam<MealTarget>(
          data['type'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'PeopleTargetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PeopleTargetStruct &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([name, type]);
}

PeopleTargetStruct createPeopleTargetStruct({
  String? name,
  MealTarget? type,
}) =>
    PeopleTargetStruct(
      name: name,
      type: type,
    );
