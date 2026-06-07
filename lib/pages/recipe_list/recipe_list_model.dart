import '/backend/schema/enums/enums.dart';
import '/components/recipe_card1/recipe_card1_widget.dart';
import '/components/u_text_field/u_text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'recipe_list_widget.dart' show RecipeListWidget;
import 'package:flutter/material.dart';

class RecipeListModel extends FlutterFlowModel<RecipeListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late UTextFieldModel textFieldModel;
  // State field(s) for Dropdown widget.
  Food? dropdownValue1;
  FormFieldController<Food>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  Hardness? dropdownValue2;
  FormFieldController<Hardness>? dropdownValueController2;
  // Models for RecipeCard.
  late FlutterFlowDynamicModels<RecipeCard1Model> recipeCardModels;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => UTextFieldModel());
    recipeCardModels = FlutterFlowDynamicModels(() => RecipeCard1Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    recipeCardModels.dispose();
  }
}
