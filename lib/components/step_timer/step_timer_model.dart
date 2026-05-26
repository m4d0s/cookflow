import '/archive/switch_component/switch_component_widget.dart';
import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'step_timer_widget.dart' show StepTimerWidget;
import 'package:flutter/material.dart';

class StepTimerModel extends FlutterFlowModel<StepTimerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SwitchComponent.
  late SwitchComponentModel switchComponentModel;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(0, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    switchComponentModel = createModel(context, () => SwitchComponentModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    switchComponentModel.dispose();
    timerController.dispose();
    buttonModel.dispose();
  }
}
