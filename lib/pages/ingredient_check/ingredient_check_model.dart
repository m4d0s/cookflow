import '/components/button/button_widget.dart';
import '/components/ingredient_checker/ingredient_checker_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ingredient_check_widget.dart' show IngredientCheckWidget;
import 'package:flutter/material.dart';

class IngredientCheckModel extends FlutterFlowModel<IngredientCheckWidget> {
  ///  Local state fields for this page.

  int checked = 0;

  ///  State fields for stateful widgets in this page.

  // Models for IngredientItem2.
  late FlutterFlowDynamicModels<IngredientCheckerModel> ingredientItem2Models;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    ingredientItem2Models =
        FlutterFlowDynamicModels(() => IngredientCheckerModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    ingredientItem2Models.dispose();
    buttonModel.dispose();
  }
}
