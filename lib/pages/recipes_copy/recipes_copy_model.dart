import '/backend/schema/enums/enums.dart';
import '/components/add_to_plan_item/add_to_plan_item_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'recipes_copy_widget.dart' show RecipesCopyWidget;
import 'package:flutter/material.dart';

class RecipesCopyModel extends FlutterFlowModel<RecipesCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel;
  // State field(s) for Dropdown widget.
  Food? dropdownValue1;
  FormFieldController<Food>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  Hardness? dropdownValue2;
  FormFieldController<Hardness>? dropdownValueController2;
  // Models for AddToPlanItem dynamic component.
  late FlutterFlowDynamicModels<AddToPlanItemModel> addToPlanItemModels;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    addToPlanItemModels = FlutterFlowDynamicModels(() => AddToPlanItemModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    addToPlanItemModels.dispose();
  }
}
