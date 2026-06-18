import '/components/product_item/product_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'product_select_widget.dart' show ProductSelectWidget;
import 'package:flutter/material.dart';

class ProductSelectModel extends FlutterFlowModel<ProductSelectWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Models for ProductItem.
  late FlutterFlowDynamicModels<ProductItemModel> productItemModels;

  @override
  void initState(BuildContext context) {
    productItemModels = FlutterFlowDynamicModels(() => ProductItemModel());
  }

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();

    productItemModels.dispose();
  }
}
