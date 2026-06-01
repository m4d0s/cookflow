import '/components/recipe_list_item/recipe_list_item_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_to_plan_widget.dart' show AddToPlanWidget;
import 'package:flutter/material.dart';

class AddToPlanModel extends FlutterFlowModel<AddToPlanWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField component.
  late TextFieldModel textFieldModel;
  // Models for RecipeListItem dynamic component.
  late FlutterFlowDynamicModels<RecipeListItemModel> recipeListItemModels;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    recipeListItemModels =
        FlutterFlowDynamicModels(() => RecipeListItemModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    recipeListItemModels.dispose();
  }
}
