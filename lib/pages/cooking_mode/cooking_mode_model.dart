import '/backend/schema/structs/index.dart';
import '/components/info_tag/info_tag_widget.dart';
import '/components/step_timer/step_timer_widget.dart';
import '/components/u_button/u_button_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cooking_mode_widget.dart' show CookingModeWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class CookingModeModel extends FlutterFlowModel<CookingModeWidget> {
  ///  Local state fields for this page.

  StepStruct? currentstep;
  void updateCurrentstepStruct(Function(StepStruct) updateFn) {
    updateFn(currentstep ??= StepStruct());
  }

  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  // Model for InfoTag component.
  late InfoTagModel infoTagModel1;
  // Model for InfoTag component.
  late InfoTagModel infoTagModel2;
  // Model for StepTimer.
  late StepTimerModel stepTimerModel;
  // Model for Button.
  late UButtonModel buttonModel1;
  // Model for Button.
  late UButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    infoTagModel1 = createModel(context, () => InfoTagModel());
    infoTagModel2 = createModel(context, () => InfoTagModel());
    stepTimerModel = createModel(context, () => StepTimerModel());
    buttonModel1 = createModel(context, () => UButtonModel());
    buttonModel2 = createModel(context, () => UButtonModel());
  }

  @override
  void dispose() {
    timerController.dispose();
    infoTagModel1.dispose();
    infoTagModel2.dispose();
    stepTimerModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
