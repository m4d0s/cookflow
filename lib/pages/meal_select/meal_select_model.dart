import '/backend/schema/enums/enums.dart';
import '/components/recipe_card2/recipe_card2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'meal_select_widget.dart' show MealSelectWidget;
import 'package:flutter/material.dart';

class MealSelectModel extends FlutterFlowModel<MealSelectWidget> {
  ///  State fields for stateful widgets in this page.

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
    recipeCard2Models = FlutterFlowDynamicModels(() => RecipeCard2Model());
  }

  @override
  void dispose() {
    recipeCard2Models.dispose();
  }
}
