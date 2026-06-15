// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopItemStruct extends BaseStruct {
  ShopItemStruct({
    double? count,
    ProductStruct? item,
    bool? bought,
  })  : _count = count,
        _item = item,
        _bought = bought;

  // "count" field.
  double? _count;
  double get count => _count ?? -1.0;
  set count(double? val) => _count = val;

  void incrementCount(double amount) => count = count + amount;

  bool hasCount() => _count != null;

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

  static ShopItemStruct fromMap(Map<String, dynamic> data) => ShopItemStruct(
        count: castToType<double>(data['count']),
        item: data['item'] is ProductStruct
            ? data['item']
            : ProductStruct.maybeFromMap(data['item']),
        bought: data['bought'] as bool?,
      );

  static ShopItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? ShopItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'count': _count,
        'item': _item?.toMap(),
        'bought': _bought,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'count': serializeParam(
          _count,
          ParamType.double,
        ),
        'item': serializeParam(
          _item,
          ParamType.DataStruct,
        ),
        'bought': serializeParam(
          _bought,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ShopItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShopItemStruct(
        count: deserializeParam(
          data['count'],
          ParamType.double,
          false,
        ),
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
      );

  @override
  String toString() => 'ShopItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ShopItemStruct &&
        count == other.count &&
        item == other.item &&
        bought == other.bought;
  }

  @override
  int get hashCode => const ListEquality().hash([count, item, bought]);
}

ShopItemStruct createShopItemStruct({
  double? count,
  ProductStruct? item,
  bool? bought,
}) =>
    ShopItemStruct(
      count: count,
      item: item ?? ProductStruct(),
      bought: bought,
    );
