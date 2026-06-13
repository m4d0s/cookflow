// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PeopleSexStruct extends BaseStruct {
  PeopleSexStruct({
    String? name,
    HumanSex? type,
  })  : _name = name,
        _type = type;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "type" field.
  HumanSex? _type;
  HumanSex get type => _type ?? HumanSex.male;
  set type(HumanSex? val) => _type = val;

  bool hasType() => _type != null;

  static PeopleSexStruct fromMap(Map<String, dynamic> data) => PeopleSexStruct(
        name: data['name'] as String?,
        type: data['type'] is HumanSex
            ? data['type']
            : deserializeEnum<HumanSex>(data['type']),
      );

  static PeopleSexStruct? maybeFromMap(dynamic data) => data is Map
      ? PeopleSexStruct.fromMap(data.cast<String, dynamic>())
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

  static PeopleSexStruct fromSerializableMap(Map<String, dynamic> data) =>
      PeopleSexStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        type: deserializeParam<HumanSex>(
          data['type'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'PeopleSexStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PeopleSexStruct && name == other.name && type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([name, type]);
}

PeopleSexStruct createPeopleSexStruct({
  String? name,
  HumanSex? type,
}) =>
    PeopleSexStruct(
      name: name,
      type: type,
    );
