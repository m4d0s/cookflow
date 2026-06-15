// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodQuantityStruct extends BaseStruct {
  FoodQuantityStruct({
    double? count,
    int? divider,
    double? multiplier,
    String? quantity,
    String? altquantity,
  })  : _count = count,
        _divider = divider,
        _multiplier = multiplier,
        _quantity = quantity,
        _altquantity = altquantity;

  // "count" field.
  double? _count;
  double get count => _count ?? -1.0;
  set count(double? val) => _count = val;

  void incrementCount(double amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "divider" field.
  int? _divider;
  int get divider => _divider ?? 1;
  set divider(int? val) => _divider = val;

  void incrementDivider(int amount) => divider = divider + amount;

  bool hasDivider() => _divider != null;

  // "multiplier" field.
  double? _multiplier;
  double get multiplier => _multiplier ?? 1.0;
  set multiplier(double? val) => _multiplier = val;

  void incrementMultiplier(double amount) => multiplier = multiplier + amount;

  bool hasMultiplier() => _multiplier != null;

  // "quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  set quantity(String? val) => _quantity = val;

  bool hasQuantity() => _quantity != null;

  // "altquantity" field.
  String? _altquantity;
  String get altquantity => _altquantity ?? '';
  set altquantity(String? val) => _altquantity = val;

  bool hasAltquantity() => _altquantity != null;

  static FoodQuantityStruct fromMap(Map<String, dynamic> data) =>
      FoodQuantityStruct(
        count: castToType<double>(data['count']),
        divider: castToType<int>(data['divider']),
        multiplier: castToType<double>(data['multiplier']),
        quantity: data['quantity'] as String?,
        altquantity: data['altquantity'] as String?,
      );

  static FoodQuantityStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodQuantityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'count': _count,
        'divider': _divider,
        'multiplier': _multiplier,
        'quantity': _quantity,
        'altquantity': _altquantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'count': serializeParam(
          _count,
          ParamType.double,
        ),
        'divider': serializeParam(
          _divider,
          ParamType.int,
        ),
        'multiplier': serializeParam(
          _multiplier,
          ParamType.double,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.String,
        ),
        'altquantity': serializeParam(
          _altquantity,
          ParamType.String,
        ),
      }.withoutNulls;

  static FoodQuantityStruct fromSerializableMap(Map<String, dynamic> data) =>
      FoodQuantityStruct(
        count: deserializeParam(
          data['count'],
          ParamType.double,
          false,
        ),
        divider: deserializeParam(
          data['divider'],
          ParamType.int,
          false,
        ),
        multiplier: deserializeParam(
          data['multiplier'],
          ParamType.double,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.String,
          false,
        ),
        altquantity: deserializeParam(
          data['altquantity'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FoodQuantityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FoodQuantityStruct &&
        count == other.count &&
        divider == other.divider &&
        multiplier == other.multiplier &&
        quantity == other.quantity &&
        altquantity == other.altquantity;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([count, divider, multiplier, quantity, altquantity]);
}

FoodQuantityStruct createFoodQuantityStruct({
  double? count,
  int? divider,
  double? multiplier,
  String? quantity,
  String? altquantity,
}) =>
    FoodQuantityStruct(
      count: count,
      divider: divider,
      multiplier: multiplier,
      quantity: quantity,
      altquantity: altquantity,
    );
