import '/components/ingredient_checker/ingredient_checker_widget.dart';
import '/components/u_button/u_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cooking_check_widget.dart' show CookingCheckWidget;
import 'package:flutter/material.dart';

class CookingCheckModel extends FlutterFlowModel<CookingCheckWidget> {
  ///  Local state fields for this page.

  int checked = 0;

  ///  State fields for stateful widgets in this page.

  // Models for IngredientItem2.
  late FlutterFlowDynamicModels<IngredientCheckerModel> ingredientItem2Models;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // Model for Button.
  late UButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    ingredientItem2Models =
        FlutterFlowDynamicModels(() => IngredientCheckerModel());
    buttonModel = createModel(context, () => UButtonModel());
  }

  @override
  void dispose() {
    ingredientItem2Models.dispose();
    buttonModel.dispose();
  }
}
