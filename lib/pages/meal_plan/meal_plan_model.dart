import '/backend/schema/structs/index.dart';
import '/components/day_card1/day_card1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meal_plan_widget.dart' show MealPlanWidget;
import 'package:flutter/material.dart';

class MealPlanModel extends FlutterFlowModel<MealPlanWidget> {
  ///  Local state fields for this page.

  DailyPlanStruct? today;
  void updateTodayStruct(Function(DailyPlanStruct) updateFn) {
    updateFn(today ??= DailyPlanStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Models for DayCard.
  late FlutterFlowDynamicModels<DayCard1Model> dayCardModels;

  @override
  void initState(BuildContext context) {
    dayCardModels = FlutterFlowDynamicModels(() => DayCard1Model());
  }

  @override
  void dispose() {
    dayCardModels.dispose();
  }
}
