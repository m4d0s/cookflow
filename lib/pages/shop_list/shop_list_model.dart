import '/components/shop_item/shop_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    shoppingItemModels1 = FlutterFlowDynamicModels(() => ShopItemModel());
    shoppingItemModels2 = FlutterFlowDynamicModels(() => ShopItemModel());
  }

  @override
  void dispose() {
    shoppingItemModels1.dispose();
    shoppingItemModels2.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
