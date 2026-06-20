import '/components/shop_create/shop_create_widget.dart';
import '/components/shop_item/shop_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'shop_list_widget.dart' show ShopListWidget;
import 'package:flutter/material.dart';

class ShopListModel extends FlutterFlowModel<ShopListWidget> {
  ///  Local state fields for this page.

  bool autohide = false;

  bool buyhide = false;

  bool newshop = false;

  ///  State fields for stateful widgets in this page.

  // Models for ShoppingItem.
  late FlutterFlowDynamicModels<ShopItemModel> shoppingItemModels1;
  // Models for ShoppingItem.
  late FlutterFlowDynamicModels<ShopItemModel> shoppingItemModels2;
  // Model for ShopCreate component.
  late ShopCreateModel shopCreateModel;

  @override
  void initState(BuildContext context) {
    shoppingItemModels1 = FlutterFlowDynamicModels(() => ShopItemModel());
    shoppingItemModels2 = FlutterFlowDynamicModels(() => ShopItemModel());
    shopCreateModel = createModel(context, () => ShopCreateModel());
  }

  @override
  void dispose() {
    shoppingItemModels1.dispose();
    shoppingItemModels2.dispose();
    shopCreateModel.dispose();
  }
}
