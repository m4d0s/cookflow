import '/components/recipe_card_mini/recipe_card_mini_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'day_card2_widget.dart' show DayCard2Widget;
import 'package:flutter/material.dart';

class DayCard2Model extends FlutterFlowModel<DayCard2Widget> {
  ///  Local state fields for this component.

  bool hideInfo = false;

  ///  State fields for stateful widgets in this component.

  // Models for RecipeCardMini dynamic component.
  late FlutterFlowDynamicModels<RecipeCardMiniModel> recipeCardMiniModels;

  @override
  void initState(BuildContext context) {
    recipeCardMiniModels =
        FlutterFlowDynamicModels(() => RecipeCardMiniModel());
  }

  @override
  void dispose() {
    recipeCardMiniModels.dispose();
  }
}
