import '/components/day_card/day_card_widget.dart';
import '/components/macro_stat/macro_stat_widget.dart';
import '/components/parameter_input/parameter_input_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'meal_preview_widget.dart' show MealPreviewWidget;
import 'package:flutter/material.dart';

class MealPreviewModel extends FlutterFlowModel<MealPreviewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MacroStat.
  late MacroStatModel macroStatModel1;
  // Model for MacroStat.
  late MacroStatModel macroStatModel2;
  // Model for MacroStat.
  late MacroStatModel macroStatModel3;
  // Model for DayCard component.
  late DayCardModel dayCardModel;
  // Model for ParameterInput.
  late ParameterInputModel parameterInputModel1;
  // Model for ParameterInput.
  late ParameterInputModel parameterInputModel2;
  // Model for ParameterInput.
  late ParameterInputModel parameterInputModel3;
  // Model for ParameterInput.
  late ParameterInputModel parameterInputModel4;
  // Model for ParameterInput.
  late ParameterInputModel parameterInputModel5;

  @override
  void initState(BuildContext context) {
    macroStatModel1 = createModel(context, () => MacroStatModel());
    macroStatModel2 = createModel(context, () => MacroStatModel());
    macroStatModel3 = createModel(context, () => MacroStatModel());
    dayCardModel = createModel(context, () => DayCardModel());
    parameterInputModel1 = createModel(context, () => ParameterInputModel());
    parameterInputModel2 = createModel(context, () => ParameterInputModel());
    parameterInputModel3 = createModel(context, () => ParameterInputModel());
    parameterInputModel4 = createModel(context, () => ParameterInputModel());
    parameterInputModel5 = createModel(context, () => ParameterInputModel());
  }

  @override
  void dispose() {
    macroStatModel1.dispose();
    macroStatModel2.dispose();
    macroStatModel3.dispose();
    dayCardModel.dispose();
    parameterInputModel1.dispose();
    parameterInputModel2.dispose();
    parameterInputModel3.dispose();
    parameterInputModel4.dispose();
    parameterInputModel5.dispose();
  }
}
