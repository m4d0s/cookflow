// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodQuantityStruct extends BaseStruct {
  FoodQuantityStruct({
    String? name,
    double? count,
    String? nutriTag,
    double? multiplier,
    Quantity? quantity,
    Quantity? altquantity,
  })  : _name = name,
        _count = count,
        _nutriTag = nutriTag,
        _multiplier = multiplier,
        _quantity = quantity,
        _altquantity = altquantity;

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

  // "nutriTag" field.
  String? _nutriTag;
  String get nutriTag => _nutriTag ?? '';
  set nutriTag(String? val) => _nutriTag = val;

  bool hasNutriTag() => _nutriTag != null;

  // "multiplier" field.
  double? _multiplier;
  double get multiplier => _multiplier ?? 0.0;
  set multiplier(double? val) => _multiplier = val;

  void incrementMultiplier(double amount) => multiplier = multiplier + amount;

  bool hasMultiplier() => _multiplier != null;

  // "quantity" field.
  Quantity? _quantity;
  Quantity? get quantity => _quantity;
  set quantity(Quantity? val) => _quantity = val;

  bool hasQuantity() => _quantity != null;

  // "altquantity" field.
  Quantity? _altquantity;
  Quantity? get altquantity => _altquantity;
  set altquantity(Quantity? val) => _altquantity = val;

  bool hasAltquantity() => _altquantity != null;

  static FoodQuantityStruct fromMap(Map<String, dynamic> data) =>
      FoodQuantityStruct(
        name: data['name'] as String?,
        count: castToType<double>(data['count']),
        nutriTag: data['nutriTag'] as String?,
        multiplier: castToType<double>(data['multiplier']),
        quantity: data['quantity'] is Quantity
            ? data['quantity']
            : deserializeEnum<Quantity>(data['quantity']),
        altquantity: data['altquantity'] is Quantity
            ? data['altquantity']
            : deserializeEnum<Quantity>(data['altquantity']),
      );

  static FoodQuantityStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodQuantityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'count': _count,
        'nutriTag': _nutriTag,
        'multiplier': _multiplier,
        'quantity': _quantity?.serialize(),
        'altquantity': _altquantity?.serialize(),
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
        'nutriTag': serializeParam(
          _nutriTag,
          ParamType.String,
        ),
        'multiplier': serializeParam(
          _multiplier,
          ParamType.double,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.Enum,
        ),
        'altquantity': serializeParam(
          _altquantity,
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
        nutriTag: deserializeParam(
          data['nutriTag'],
          ParamType.String,
          false,
        ),
        multiplier: deserializeParam(
          data['multiplier'],
          ParamType.double,
          false,
        ),
        quantity: deserializeParam<Quantity>(
          data['quantity'],
          ParamType.Enum,
          false,
        ),
        altquantity: deserializeParam<Quantity>(
          data['altquantity'],
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
        nutriTag == other.nutriTag &&
        multiplier == other.multiplier &&
        quantity == other.quantity &&
        altquantity == other.altquantity;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, count, nutriTag, multiplier, quantity, altquantity]);
}

FoodQuantityStruct createFoodQuantityStruct({
  String? name,
  double? count,
  String? nutriTag,
  double? multiplier,
  Quantity? quantity,
  Quantity? altquantity,
}) =>
    FoodQuantityStruct(
      name: name,
      count: count,
      nutriTag: nutriTag,
      multiplier: multiplier,
      quantity: quantity,
      altquantity: altquantity,
    );
