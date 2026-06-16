import '/components/achievement_badge/achievement_badge_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cooking_end_widget.dart' show CookingEndWidget;
import 'package:flutter/material.dart';

class CookingEndModel extends FlutterFlowModel<CookingEndWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - base64ToFFUploadedFile] action in CookingEnd widget.
  FFUploadedFile? endpic;
  // Model for AchievementBadge.
  late AchievementBadgeModel achievementBadgeModel1;
  // Model for AchievementBadge.
  late AchievementBadgeModel achievementBadgeModel2;
  // Model for AchievementBadge.
  late AchievementBadgeModel achievementBadgeModel3;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {
    achievementBadgeModel1 =
        createModel(context, () => AchievementBadgeModel());
    achievementBadgeModel2 =
        createModel(context, () => AchievementBadgeModel());
    achievementBadgeModel3 =
        createModel(context, () => AchievementBadgeModel());
  }

  @override
  void dispose() {
    achievementBadgeModel1.dispose();
    achievementBadgeModel2.dispose();
    achievementBadgeModel3.dispose();
  }
}
