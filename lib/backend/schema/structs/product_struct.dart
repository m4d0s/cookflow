// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    int? id,
    String? name,
    Quantity? quantity,
    List<NutritionsStruct>? nutrition100g,
  })  : _id = id,
        _name = name,
        _quantity = quantity,
        _nutrition100g = nutrition100g;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "quantity" field.
  Quantity? _quantity;
  Quantity? get quantity => _quantity;
  set quantity(Quantity? val) => _quantity = val;

  bool hasQuantity() => _quantity != null;

  // "nutrition_100g" field.
  List<NutritionsStruct>? _nutrition100g;
  List<NutritionsStruct> get nutrition100g => _nutrition100g ?? const [];
  set nutrition100g(List<NutritionsStruct>? val) => _nutrition100g = val;

  void updateNutrition100g(Function(List<NutritionsStruct>) updateFn) {
    updateFn(_nutrition100g ??= []);
  }

  bool hasNutrition100g() => _nutrition100g != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        quantity: data['quantity'] is Quantity
            ? data['quantity']
            : deserializeEnum<Quantity>(data['quantity']),
        nutrition100g: getStructList(
          data['nutrition_100g'],
          NutritionsStruct.fromMap,
        ),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'quantity': _quantity?.serialize(),
        'nutrition_100g': _nutrition100g?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.Enum,
        ),
        'nutrition_100g': serializeParam(
          _nutrition100g,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam<Quantity>(
          data['quantity'],
          ParamType.Enum,
          false,
        ),
        nutrition100g: deserializeStructParam<NutritionsStruct>(
          data['nutrition_100g'],
          ParamType.DataStruct,
          true,
          structBuilder: NutritionsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductStruct &&
        id == other.id &&
        name == other.name &&
        quantity == other.quantity &&
        listEquality.equals(nutrition100g, other.nutrition100g);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, quantity, nutrition100g]);
}

ProductStruct createProductStruct({
  int? id,
  String? name,
  Quantity? quantity,
}) =>
    ProductStruct(
      id: id,
      name: name,
      quantity: quantity,
    );
