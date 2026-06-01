import '/backend/schema/enums/enums.dart';
import '/components/button/button_widget.dart';
import '/components/edit_step_item/edit_step_item_widget.dart';
import '/components/product_card/product_card_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'add_edit_recipe_widget.dart' show AddEditRecipeWidget;
import 'package:flutter/material.dart';

class AddEditRecipeModel extends FlutterFlowModel<AddEditRecipeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Button.
  late ButtonModel buttonModel;
  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;
  // State field(s) for DropDown widget.
  Food? dropDownValue1;
  FormFieldController<Food>? dropDownValueController1;
  // State field(s) for DropDown widget.
  Hardness? dropDownValue2;
  FormFieldController<Hardness>? dropDownValueController2;
  // State field(s) for CountController widget.
  int? countControllerValue3;
  // Models for ProductCard dynamic component.
  late FlutterFlowDynamicModels<ProductCardModel> productCardModels;
  // Models for EditStepItem dynamic component.
  late FlutterFlowDynamicModels<EditStepItemModel> editStepItemModels;

  @override
  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
    textFieldModel1 = createModel(context, () => TextFieldModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    productCardModels = FlutterFlowDynamicModels(() => ProductCardModel());
    editStepItemModels = FlutterFlowDynamicModels(() => EditStepItemModel());
  }

  @override
  void dispose() {
    buttonModel.dispose();
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    productCardModels.dispose();
    editStepItemModels.dispose();
  }
}
