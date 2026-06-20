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
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Models for ProductItem dynamic component.
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
