import '/backend/schema/enums/enums.dart';
import '/components/recipe_card2/recipe_card2_widget.dart';
import '/components/u_text_field/u_text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'recipe_choose_widget.dart' show RecipeChooseWidget;
import 'package:flutter/material.dart';

class RecipeChooseModel extends FlutterFlowModel<RecipeChooseWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late UTextFieldModel textFieldModel;
  // State field(s) for Dropdown widget.
  Food? dropdownValue1;
  FormFieldController<Food>? dropdownValueController1;
  // State field(s) for Dropdown widget.
  Hardness? dropdownValue2;
  FormFieldController<Hardness>? dropdownValueController2;
  // Models for RecipeCard2 dynamic component.
  late FlutterFlowDynamicModels<RecipeCard2Model> recipeCard2Models;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => UTextFieldModel());
    recipeCard2Models = FlutterFlowDynamicModels(() => RecipeCard2Model());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
    recipeCard2Models.dispose();
  }
}
