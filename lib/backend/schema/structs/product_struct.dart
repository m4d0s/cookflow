// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    int? id,
    String? name,
    bool? inBase,
    NutritionsStruct? nutrition100g,
    FoodQuantityStruct? quantity,
    ProductCategoryStruct? category,
  })  : _id = id,
        _name = name,
        _inBase = inBase,
        _nutrition100g = nutrition100g,
        _quantity = quantity,
        _category = category;

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

  // "inBase" field.
  bool? _inBase;
  bool get inBase => _inBase ?? false;
  set inBase(bool? val) => _inBase = val;

  bool hasInBase() => _inBase != null;

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

  // "category" field.
  ProductCategoryStruct? _category;
  ProductCategoryStruct get category => _category ?? ProductCategoryStruct();
  set category(ProductCategoryStruct? val) => _category = val;

  void updateCategory(Function(ProductCategoryStruct) updateFn) {
    updateFn(_category ??= ProductCategoryStruct());
  }

  bool hasCategory() => _category != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        inBase: data['inBase'] as bool?,
        nutrition100g: data['nutrition_100g'] is NutritionsStruct
            ? data['nutrition_100g']
            : NutritionsStruct.maybeFromMap(data['nutrition_100g']),
        quantity: data['quantity'] is FoodQuantityStruct
            ? data['quantity']
            : FoodQuantityStruct.maybeFromMap(data['quantity']),
        category: data['category'] is ProductCategoryStruct
            ? data['category']
            : ProductCategoryStruct.maybeFromMap(data['category']),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'inBase': _inBase,
        'nutrition_100g': _nutrition100g?.toMap(),
        'quantity': _quantity?.toMap(),
        'category': _category?.toMap(),
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
        'inBase': serializeParam(
          _inBase,
          ParamType.bool,
        ),
        'nutrition_100g': serializeParam(
          _nutrition100g,
          ParamType.DataStruct,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.DataStruct,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
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
        inBase: deserializeParam(
          data['inBase'],
          ParamType.bool,
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
        category: deserializeStructParam(
          data['category'],
          ParamType.DataStruct,
          false,
          structBuilder: ProductCategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        id == other.id &&
        name == other.name &&
        inBase == other.inBase &&
        nutrition100g == other.nutrition100g &&
        quantity == other.quantity &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, inBase, nutrition100g, quantity, category]);
}

ProductStruct createProductStruct({
  int? id,
  String? name,
  bool? inBase,
  NutritionsStruct? nutrition100g,
  FoodQuantityStruct? quantity,
  ProductCategoryStruct? category,
}) =>
    ProductStruct(
      id: id,
      name: name,
      inBase: inBase,
      nutrition100g: nutrition100g ?? NutritionsStruct(),
      quantity: quantity ?? FoodQuantityStruct(),
      category: category ?? ProductCategoryStruct(),
    );
