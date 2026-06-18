// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductCategoryStruct extends BaseStruct {
  ProductCategoryStruct({
    String? name,
    bool? checked,
  })  : _name = name,
        _checked = checked;

  // "name" field.
  String? _name;
  String get name => _name ?? 'Произвольный';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "checked" field.
  bool? _checked;
  bool get checked => _checked ?? false;
  set checked(bool? val) => _checked = val;

  bool hasChecked() => _checked != null;

  static ProductCategoryStruct fromMap(Map<String, dynamic> data) =>
      ProductCategoryStruct(
        name: data['name'] as String?,
        checked: data['checked'] as bool?,
      );

  static ProductCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'checked': _checked,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'checked': serializeParam(
          _checked,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProductCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductCategoryStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        checked: deserializeParam(
          data['checked'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProductCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductCategoryStruct &&
        name == other.name &&
        checked == other.checked;
  }

  @override
  int get hashCode => const ListEquality().hash([name, checked]);
}

ProductCategoryStruct createProductCategoryStruct({
  String? name,
  bool? checked,
}) =>
    ProductCategoryStruct(
      name: name,
      checked: checked,
    );
