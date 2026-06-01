import '/components/button/button_widget.dart';
import '/components/recipe_item_mini/recipe_item_mini_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'day_card_widget.dart' show DayCardWidget;
import 'package:flutter/material.dart';

class DayCardModel extends FlutterFlowModel<DayCardWidget> {
  ///  Local state fields for this component.

  bool hideInfo = true;

  ///  State fields for stateful widgets in this component.

  // Models for RecipeItemMini dynamic component.
  late FlutterFlowDynamicModels<RecipeItemMiniModel> recipeItemMiniModels;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    recipeItemMiniModels =
        FlutterFlowDynamicModels(() => RecipeItemMiniModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    recipeItemMiniModels.dispose();
    buttonModel.dispose();
  }
}
