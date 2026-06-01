import '/components/recipe_list_item/recipe_list_item_widget.dart';
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
  String? dropdownValue1;
  FormFieldController<String>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  String? dropdownValue2;
  FormFieldController<String>? dropdownValueController2;
  // Models for RecipeCard.
  late FlutterFlowDynamicModels<RecipeListItemModel> recipeCardModels;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
    recipeCardModels = FlutterFlowDynamicModels(() => RecipeListItemModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    recipeCardModels.dispose();
  }
}
