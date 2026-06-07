import '/components/recipe_card_mini/recipe_card_mini_widget.dart';
import '/components/u_button/u_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'day_card_widget.dart' show DayCardWidget;
import 'package:flutter/material.dart';

class DayCardModel extends FlutterFlowModel<DayCardWidget> {
  ///  Local state fields for this component.

  bool hideInfo = true;

  ///  State fields for stateful widgets in this component.

  // Models for RecipeCardMini dynamic component.
  late FlutterFlowDynamicModels<RecipeCardMiniModel> recipeCardMiniModels;
  // Model for Button.
  late UButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    recipeCardMiniModels =
        FlutterFlowDynamicModels(() => RecipeCardMiniModel());
    buttonModel = createModel(context, () => UButtonModel());
  }

  @override
  void dispose() {
    recipeCardMiniModels.dispose();
    buttonModel.dispose();
  }
}
