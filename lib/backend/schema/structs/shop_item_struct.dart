// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopItemStruct extends BaseStruct {
  ShopItemStruct({
    int? id,
    int? productId,
    String? name,
    FoodQuantityStruct? quantity,
    DateTime? create,
    DateTime? done,
    bool? bought,
  })  : _id = id,
        _productId = productId,
        _name = name,
        _quantity = quantity,
        _create = create,
        _done = done,
        _bought = bought;

  // "id" field.
  int? _id;
  int get id => _id ?? -1;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "productId" field.
  int? _productId;
  int get productId => _productId ?? -1;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "quantity" field.
  FoodQuantityStruct? _quantity;
  FoodQuantityStruct get quantity => _quantity ?? FoodQuantityStruct();
  set quantity(FoodQuantityStruct? val) => _quantity = val;

  void updateQuantity(Function(FoodQuantityStruct) updateFn) {
    updateFn(_quantity ??= FoodQuantityStruct());
  }

  bool hasQuantity() => _quantity != null;

  // "create" field.
  DateTime? _create;
  DateTime? get create => _create;
  set create(DateTime? val) => _create = val;

  bool hasCreate() => _create != null;

  // "done" field.
  DateTime? _done;
  DateTime? get done => _done;
  set done(DateTime? val) => _done = val;

  bool hasDone() => _done != null;

  // "bought" field.
  bool? _bought;
  bool get bought => _bought ?? false;
  set bought(bool? val) => _bought = val;

  bool hasBought() => _bought != null;

  static ShopItemStruct fromMap(Map<String, dynamic> data) => ShopItemStruct(
        id: castToType<int>(data['id']),
        productId: castToType<int>(data['productId']),
        name: data['name'] as String?,
        quantity: data['quantity'] is FoodQuantityStruct
            ? data['quantity']
            : FoodQuantityStruct.maybeFromMap(data['quantity']),
        create: data['create'] as DateTime?,
        done: data['done'] as DateTime?,
        bought: data['bought'] as bool?,
      );

  static ShopItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? ShopItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'productId': _productId,
        'name': _name,
        'quantity': _quantity?.toMap(),
        'create': _create,
        'done': _done,
        'bought': _bought,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'productId': serializeParam(
          _productId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.DataStruct,
        ),
        'create': serializeParam(
          _create,
          ParamType.DateTime,
        ),
        'done': serializeParam(
          _done,
          ParamType.DateTime,
        ),
        'bought': serializeParam(
          _bought,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ShopItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShopItemStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        productId: deserializeParam(
          data['productId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        quantity: deserializeStructParam(
          data['quantity'],
          ParamType.DataStruct,
          false,
          structBuilder: FoodQuantityStruct.fromSerializableMap,
        ),
        create: deserializeParam(
          data['create'],
          ParamType.DateTime,
          false,
        ),
        done: deserializeParam(
          data['done'],
          ParamType.DateTime,
          false,
        ),
        bought: deserializeParam(
          data['bought'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ShopItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ShopItemStruct &&
        id == other.id &&
        productId == other.productId &&
        name == other.name &&
        quantity == other.quantity &&
        create == other.create &&
        done == other.done &&
        bought == other.bought;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, productId, name, quantity, create, done, bought]);
}

ShopItemStruct createShopItemStruct({
  int? id,
  int? productId,
  String? name,
  FoodQuantityStruct? quantity,
  DateTime? create,
  DateTime? done,
  bool? bought,
}) =>
    ShopItemStruct(
      id: id,
      productId: productId,
      name: name,
      quantity: quantity ?? FoodQuantityStruct(),
      create: create,
      done: done,
      bought: bought,
    );
