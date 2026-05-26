// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopItemStruct extends BaseStruct {
  ShopItemStruct({
    ProductStruct? item,
    bool? bought,
    double? count,
  })  : _item = item,
        _bought = bought,
        _count = count;

  // "item" field.
  ProductStruct? _item;
  ProductStruct get item => _item ?? ProductStruct();
  set item(ProductStruct? val) => _item = val;

  void updateItem(Function(ProductStruct) updateFn) {
    updateFn(_item ??= ProductStruct());
  }

  bool hasItem() => _item != null;

  // "bought" field.
  bool? _bought;
  bool get bought => _bought ?? false;
  set bought(bool? val) => _bought = val;

  bool hasBought() => _bought != null;

  // "count" field.
  double? _count;
  double get count => _count ?? 0.0;
  set count(double? val) => _count = val;

  void incrementCount(double amount) => count = count + amount;

  bool hasCount() => _count != null;

  static ShopItemStruct fromMap(Map<String, dynamic> data) => ShopItemStruct(
        item: data['item'] is ProductStruct
            ? data['item']
            : ProductStruct.maybeFromMap(data['item']),
        bought: data['bought'] as bool?,
        count: castToType<double>(data['count']),
      );

  static ShopItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? ShopItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'item': _item?.toMap(),
        'bought': _bought,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item': serializeParam(
          _item,
          ParamType.DataStruct,
        ),
        'bought': serializeParam(
          _bought,
          ParamType.bool,
        ),
        'count': serializeParam(
          _count,
          ParamType.double,
        ),
      }.withoutNulls;

  static ShopItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShopItemStruct(
        item: deserializeStructParam(
          data['item'],
          ParamType.DataStruct,
          false,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
        bought: deserializeParam(
          data['bought'],
          ParamType.bool,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ShopItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ShopItemStruct &&
        item == other.item &&
        bought == other.bought &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([item, bought, count]);
}

ShopItemStruct createShopItemStruct({
  ProductStruct? item,
  bool? bought,
  double? count,
}) =>
    ShopItemStruct(
      item: item ?? ProductStruct(),
      bought: bought,
      count: count,
    );
