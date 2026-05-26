import '/components/day_card/day_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'meal_plan_widget.dart' show MealPlanWidget;
import 'package:flutter/material.dart';

class MealPlanModel extends FlutterFlowModel<MealPlanWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DayCard.
  late DayCardModel dayCardModel1;
  // Model for DayCard.
  late DayCardModel dayCardModel2;

  @override
  void initState(BuildContext context) {
    dayCardModel1 = createModel(context, () => DayCardModel());
    dayCardModel2 = createModel(context, () => DayCardModel());
  }

  @override
  void dispose() {
    dayCardModel1.dispose();
    dayCardModel2.dispose();
  }
}
