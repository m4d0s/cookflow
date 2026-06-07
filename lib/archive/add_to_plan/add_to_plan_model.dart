import '/components/recipe_card1/recipe_card1_widget.dart';
import '/components/u_text_field/u_text_field_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_to_plan_widget.dart' show AddToPlanWidget;
import 'package:flutter/material.dart';

class AddToPlanModel extends FlutterFlowModel<AddToPlanWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UTextField component.
  late UTextFieldModel uTextFieldModel;
  // Models for RecipeCard1 dynamic component.
  late FlutterFlowDynamicModels<RecipeCard1Model> recipeCard1Models;

  @override
  void initState(BuildContext context) {
    uTextFieldModel = createModel(context, () => UTextFieldModel());
    recipeCard1Models = FlutterFlowDynamicModels(() => RecipeCard1Model());
  }

  @override
  void dispose() {
    uTextFieldModel.dispose();
    recipeCard1Models.dispose();
  }
}
