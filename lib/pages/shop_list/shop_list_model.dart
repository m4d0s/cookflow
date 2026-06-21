import '/backend/schema/structs/index.dart';
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

  // State field(s) for CheckboxListTile widget.
  Map<ShopItemStruct, bool> checkboxListTileValueMap1 = {};
  List<ShopItemStruct> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<ShopItemStruct, bool> checkboxListTileValueMap2 = {};
  List<ShopItemStruct> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

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
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
