import '/components/day_card1/day_card1_widget.dart';
import '/components/macro_stat/macro_stat_widget.dart';
import '/components/parameter_input/parameter_input_widget.dart';
import '/components/water_balance/water_balance_widget.dart';
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
  // Model for WaterBalance component.
  late WaterBalanceModel waterBalanceModel;
  // Model for DayCard1 component.
  late DayCard1Model dayCard1Model;
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
    waterBalanceModel = createModel(context, () => WaterBalanceModel());
    dayCard1Model = createModel(context, () => DayCard1Model());
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
    waterBalanceModel.dispose();
    dayCard1Model.dispose();
    parameterInputModel1.dispose();
    parameterInputModel2.dispose();
    parameterInputModel3.dispose();
    parameterInputModel4.dispose();
    parameterInputModel5.dispose();
  }
}
