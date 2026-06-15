import '/backend/schema/structs/index.dart';
import '/components/day_card2/day_card2_widget.dart';
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

  // Models for DayCard2 dynamic component.
  late FlutterFlowDynamicModels<DayCard2Model> dayCard2Models;

  @override
  void initState(BuildContext context) {
    dayCard2Models = FlutterFlowDynamicModels(() => DayCard2Model());
  }

  @override
  void dispose() {
    dayCard2Models.dispose();
  }
}
