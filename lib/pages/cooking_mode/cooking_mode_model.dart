import '/backend/schema/structs/index.dart';
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

  // Stores action output result for [Custom Action - base64ToFFUploadedFile] action in CookingMode widget.
  FFUploadedFile? steppic;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for Button.
  late UButtonModel buttonModel1;
  // Model for Button.
  late UButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => UButtonModel());
    buttonModel2 = createModel(context, () => UButtonModel());
  }

  @override
  void dispose() {
    timerController.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
