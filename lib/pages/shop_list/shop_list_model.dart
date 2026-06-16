import '/components/shop_item/shop_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'shop_list_widget.dart' show ShopListWidget;
import 'package:flutter/material.dart';

class ShopListModel extends FlutterFlowModel<ShopListWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for ShoppingItem.
  late FlutterFlowDynamicModels<ShopItemModel> shoppingItemModels1;
  // Models for ShoppingItem.
  late FlutterFlowDynamicModels<ShopItemModel> shoppingItemModels2;

  @override
  void initState(BuildContext context) {
    shoppingItemModels1 = FlutterFlowDynamicModels(() => ShopItemModel());
    shoppingItemModels2 = FlutterFlowDynamicModels(() => ShopItemModel());
  }

  @override
  void dispose() {
    shoppingItemModels1.dispose();
    shoppingItemModels2.dispose();
  }
}
