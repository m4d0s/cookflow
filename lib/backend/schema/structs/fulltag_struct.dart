// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FulltagStruct extends BaseStruct {
  FulltagStruct({
    String? hardname,
    String? foodname,
  })  : _hardname = hardname,
        _foodname = foodname;

  // "hardname" field.
  String? _hardname;
  String get hardname => _hardname ?? '';
  set hardname(String? val) => _hardname = val;

  bool hasHardname() => _hardname != null;

  // "foodname" field.
  String? _foodname;
  String get foodname => _foodname ?? '';
  set foodname(String? val) => _foodname = val;

  bool hasFoodname() => _foodname != null;

  static FulltagStruct fromMap(Map<String, dynamic> data) => FulltagStruct(
        hardname: data['hardname'] as String?,
        foodname: data['foodname'] as String?,
      );

  static FulltagStruct? maybeFromMap(dynamic data) =>
      data is Map ? FulltagStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'hardname': _hardname,
        'foodname': _foodname,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hardname': serializeParam(
          _hardname,
          ParamType.String,
        ),
        'foodname': serializeParam(
          _foodname,
          ParamType.String,
        ),
      }.withoutNulls;

  static FulltagStruct fromSerializableMap(Map<String, dynamic> data) =>
      FulltagStruct(
        hardname: deserializeParam(
          data['hardname'],
          ParamType.String,
          false,
        ),
        foodname: deserializeParam(
          data['foodname'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FulltagStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FulltagStruct &&
        hardname == other.hardname &&
        foodname == other.foodname;
  }

  @override
  int get hashCode => const ListEquality().hash([hardname, foodname]);
}

FulltagStruct createFulltagStruct({
  String? hardname,
  String? foodname,
}) =>
    FulltagStruct(
      hardname: hardname,
      foodname: foodname,
    );
