// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    int? id,
    String? name,
    NutritionsStruct? nutrition100g,
    FoodQuantityStruct? quantity,
    bool? isChecked,
  })  : _id = id,
        _name = name,
        _nutrition100g = nutrition100g,
        _quantity = quantity,
        _isChecked = isChecked;

  // "id" field.
  int? _id;
  int get id => _id ?? -1;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "nutrition_100g" field.
  NutritionsStruct? _nutrition100g;
  NutritionsStruct get nutrition100g => _nutrition100g ?? NutritionsStruct();
  set nutrition100g(NutritionsStruct? val) => _nutrition100g = val;

  void updateNutrition100g(Function(NutritionsStruct) updateFn) {
    updateFn(_nutrition100g ??= NutritionsStruct());
  }

  bool hasNutrition100g() => _nutrition100g != null;

  // "quantity" field.
  FoodQuantityStruct? _quantity;
  FoodQuantityStruct get quantity => _quantity ?? FoodQuantityStruct();
  set quantity(FoodQuantityStruct? val) => _quantity = val;

  void updateQuantity(Function(FoodQuantityStruct) updateFn) {
    updateFn(_quantity ??= FoodQuantityStruct());
  }

  bool hasQuantity() => _quantity != null;

  // "isChecked" field.
  bool? _isChecked;
  bool get isChecked => _isChecked ?? false;
  set isChecked(bool? val) => _isChecked = val;

  bool hasIsChecked() => _isChecked != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        nutrition100g: data['nutrition_100g'] is NutritionsStruct
            ? data['nutrition_100g']
            : NutritionsStruct.maybeFromMap(data['nutrition_100g']),
        quantity: data['quantity'] is FoodQuantityStruct
            ? data['quantity']
            : FoodQuantityStruct.maybeFromMap(data['quantity']),
        isChecked: data['isChecked'] as bool?,
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'nutrition_100g': _nutrition100g?.toMap(),
        'quantity': _quantity?.toMap(),
        'isChecked': _isChecked,
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
        'nutrition_100g': serializeParam(
          _nutrition100g,
          ParamType.DataStruct,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.DataStruct,
        ),
        'isChecked': serializeParam(
          _isChecked,
          ParamType.bool,
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
        nutrition100g: deserializeStructParam(
          data['nutrition_100g'],
          ParamType.DataStruct,
          false,
          structBuilder: NutritionsStruct.fromSerializableMap,
        ),
        quantity: deserializeStructParam(
          data['quantity'],
          ParamType.DataStruct,
          false,
          structBuilder: FoodQuantityStruct.fromSerializableMap,
        ),
        isChecked: deserializeParam(
          data['isChecked'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        id == other.id &&
        name == other.name &&
        nutrition100g == other.nutrition100g &&
        quantity == other.quantity &&
        isChecked == other.isChecked;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, nutrition100g, quantity, isChecked]);
}

ProductStruct createProductStruct({
  int? id,
  String? name,
  NutritionsStruct? nutrition100g,
  FoodQuantityStruct? quantity,
  bool? isChecked,
}) =>
    ProductStruct(
      id: id,
      name: name,
      nutrition100g: nutrition100g ?? NutritionsStruct(),
      quantity: quantity ?? FoodQuantityStruct(),
      isChecked: isChecked,
    );
