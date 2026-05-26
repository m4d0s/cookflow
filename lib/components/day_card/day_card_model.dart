import '/components/button/button_widget.dart';
import '/components/recipe_item_mini/recipe_item_mini_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'day_card_widget.dart' show DayCardWidget;
import 'package:flutter/material.dart';

class DayCardModel extends FlutterFlowModel<DayCardWidget> {
  ///  Local state fields for this component.

  bool hideInfo = true;

  ///  State fields for stateful widgets in this component.

  // Model for RecipeItemMini component.
  late RecipeItemMiniModel recipeItemMiniModel;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    recipeItemMiniModel = createModel(context, () => RecipeItemMiniModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    recipeItemMiniModel.dispose();
    buttonModel.dispose();
  }
}
