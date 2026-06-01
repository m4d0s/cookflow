// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodQuantityStruct extends BaseStruct {
  FoodQuantityStruct({
    String? name,
    double? count,
    Quantity? quantity,
    bool? isAltQuantity,
    double? altTranslate,
    Quantity? altQuantity,
  })  : _name = name,
        _count = count,
        _quantity = quantity,
        _isAltQuantity = isAltQuantity,
        _altTranslate = altTranslate,
        _altQuantity = altQuantity;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "count" field.
  double? _count;
  double get count => _count ?? 0.0;
  set count(double? val) => _count = val;

  void incrementCount(double amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "quantity" field.
  Quantity? _quantity;
  Quantity? get quantity => _quantity;
  set quantity(Quantity? val) => _quantity = val;

  bool hasQuantity() => _quantity != null;

  // "isAltQuantity" field.
  bool? _isAltQuantity;
  bool get isAltQuantity => _isAltQuantity ?? false;
  set isAltQuantity(bool? val) => _isAltQuantity = val;

  bool hasIsAltQuantity() => _isAltQuantity != null;

  // "altTranslate" field.
  double? _altTranslate;
  double get altTranslate => _altTranslate ?? 0.0;
  set altTranslate(double? val) => _altTranslate = val;

  void incrementAltTranslate(double amount) =>
      altTranslate = altTranslate + amount;

  bool hasAltTranslate() => _altTranslate != null;

  // "altQuantity" field.
  Quantity? _altQuantity;
  Quantity? get altQuantity => _altQuantity;
  set altQuantity(Quantity? val) => _altQuantity = val;

  bool hasAltQuantity() => _altQuantity != null;

  static FoodQuantityStruct fromMap(Map<String, dynamic> data) =>
      FoodQuantityStruct(
        name: data['name'] as String?,
        count: castToType<double>(data['count']),
        quantity: data['quantity'] is Quantity
            ? data['quantity']
            : deserializeEnum<Quantity>(data['quantity']),
        isAltQuantity: data['isAltQuantity'] as bool?,
        altTranslate: castToType<double>(data['altTranslate']),
        altQuantity: data['altQuantity'] is Quantity
            ? data['altQuantity']
            : deserializeEnum<Quantity>(data['altQuantity']),
      );

  static FoodQuantityStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodQuantityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'count': _count,
        'quantity': _quantity?.serialize(),
        'isAltQuantity': _isAltQuantity,
        'altTranslate': _altTranslate,
        'altQuantity': _altQuantity?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.double,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.Enum,
        ),
        'isAltQuantity': serializeParam(
          _isAltQuantity,
          ParamType.bool,
        ),
        'altTranslate': serializeParam(
          _altTranslate,
          ParamType.double,
        ),
        'altQuantity': serializeParam(
          _altQuantity,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static FoodQuantityStruct fromSerializableMap(Map<String, dynamic> data) =>
      FoodQuantityStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.double,
          false,
        ),
        quantity: deserializeParam<Quantity>(
          data['quantity'],
          ParamType.Enum,
          false,
        ),
        isAltQuantity: deserializeParam(
          data['isAltQuantity'],
          ParamType.bool,
          false,
        ),
        altTranslate: deserializeParam(
          data['altTranslate'],
          ParamType.double,
          false,
        ),
        altQuantity: deserializeParam<Quantity>(
          data['altQuantity'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'FoodQuantityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodQuantityStruct &&
        name == other.name &&
        count == other.count &&
        quantity == other.quantity &&
        isAltQuantity == other.isAltQuantity &&
        altTranslate == other.altTranslate &&
        altQuantity == other.altQuantity;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, count, quantity, isAltQuantity, altTranslate, altQuantity]);
}

FoodQuantityStruct createFoodQuantityStruct({
  String? name,
  double? count,
  Quantity? quantity,
  bool? isAltQuantity,
  double? altTranslate,
  Quantity? altQuantity,
}) =>
    FoodQuantityStruct(
      name: name,
      count: count,
      quantity: quantity,
      isAltQuantity: isAltQuantity,
      altTranslate: altTranslate,
      altQuantity: altQuantity,
    );
