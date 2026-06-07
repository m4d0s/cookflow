import '/archive/shopping_item/shopping_item_widget.dart';
import '/archive/tab_group/tab_group_widget.dart';
import '/components/u_button/u_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shopping_list_widget.dart' show ShoppingListWidget;
import 'package:flutter/material.dart';

class ShoppingListModel extends FlutterFlowModel<ShoppingListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TabGroup.
  late TabGroupModel tabGroupModel;
  // Model for ShoppingItem.
  late ShoppingItemModel shoppingItemModel1;
  // Model for ShoppingItem.
  late ShoppingItemModel shoppingItemModel2;
  // Model for ShoppingItem.
  late ShoppingItemModel shoppingItemModel3;
  // Model for ShoppingItem.
  late ShoppingItemModel shoppingItemModel4;
  // Model for ShoppingItem.
  late ShoppingItemModel shoppingItemModel5;
  // Model for ShoppingItem.
  late ShoppingItemModel shoppingItemModel6;
  // Model for ShoppingItem.
  late ShoppingItemModel shoppingItemModel7;
  // Model for ShoppingItem.
  late ShoppingItemModel shoppingItemModel8;
  // Model for Button.
  late UButtonModel buttonModel1;
  // Model for Button.
  late UButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    tabGroupModel = createModel(context, () => TabGroupModel());
    shoppingItemModel1 = createModel(context, () => ShoppingItemModel());
    shoppingItemModel2 = createModel(context, () => ShoppingItemModel());
    shoppingItemModel3 = createModel(context, () => ShoppingItemModel());
    shoppingItemModel4 = createModel(context, () => ShoppingItemModel());
    shoppingItemModel5 = createModel(context, () => ShoppingItemModel());
    shoppingItemModel6 = createModel(context, () => ShoppingItemModel());
    shoppingItemModel7 = createModel(context, () => ShoppingItemModel());
    shoppingItemModel8 = createModel(context, () => ShoppingItemModel());
    buttonModel1 = createModel(context, () => UButtonModel());
    buttonModel2 = createModel(context, () => UButtonModel());
  }

  @override
  void dispose() {
    tabGroupModel.dispose();
    shoppingItemModel1.dispose();
    shoppingItemModel2.dispose();
    shoppingItemModel3.dispose();
    shoppingItemModel4.dispose();
    shoppingItemModel5.dispose();
    shoppingItemModel6.dispose();
    shoppingItemModel7.dispose();
    shoppingItemModel8.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
