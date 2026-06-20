import '/components/product_create/product_create_widget.dart';
import '/components/product_item/product_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_base_widget.dart' show ProductBaseWidget;
import 'package:flutter/material.dart';

class ProductBaseModel extends FlutterFlowModel<ProductBaseWidget> {
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
  // Model for ProductCreate component.
  late ProductCreateModel productCreateModel;

  @override
  void initState(BuildContext context) {
    productItemModels = FlutterFlowDynamicModels(() => ProductItemModel());
    productCreateModel = createModel(context, () => ProductCreateModel());
  }

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();

    productItemModels.dispose();
    productCreateModel.dispose();
  }
}
