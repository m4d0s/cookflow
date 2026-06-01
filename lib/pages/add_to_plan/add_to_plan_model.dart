import '/components/add_to_plan_item/add_to_plan_item_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_to_plan_widget.dart' show AddToPlanWidget;
import 'package:flutter/material.dart';

class AddToPlanModel extends FlutterFlowModel<AddToPlanWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField component.
  late TextFieldModel textFieldModel;
  // Models for RecipeCard2.
  late FlutterFlowDynamicModels<AddToPlanItemModel> recipeCard2Models;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    recipeCard2Models = FlutterFlowDynamicModels(() => AddToPlanItemModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    recipeCard2Models.dispose();
  }
}
