import '/backend/schema/structs/index.dart';
import '/components/day_card/day_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
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
  late FlutterFlowDynamicModels<DayCardModel> dayCardModels;

  @override
  void initState(BuildContext context) {
    dayCardModels = FlutterFlowDynamicModels(() => DayCardModel());
  }

  @override
  void dispose() {
    dayCardModels.dispose();
  }
}
