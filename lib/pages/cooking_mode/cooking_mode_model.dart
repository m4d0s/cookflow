import '/backend/schema/structs/index.dart';
import '/components/step_counter/step_counter_widget.dart';
import '/components/step_timer/step_timer_widget.dart';
import '/components/u_button/u_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cooking_mode_widget.dart' show CookingModeWidget;
import 'package:flutter/material.dart';

class CookingModeModel extends FlutterFlowModel<CookingModeWidget> {
  ///  Local state fields for this page.

  StepStruct? currentstep;
  void updateCurrentstepStruct(Function(StepStruct) updateFn) {
    updateFn(currentstep ??= StepStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Models for ProgressStep.
  late FlutterFlowDynamicModels<StepCounterModel> progressStepModels;
  // Model for StepTimer.
  late StepTimerModel stepTimerModel;
  // Model for Button.
  late UButtonModel buttonModel1;
  // Model for Button.
  late UButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    progressStepModels = FlutterFlowDynamicModels(() => StepCounterModel());
    stepTimerModel = createModel(context, () => StepTimerModel());
    buttonModel1 = createModel(context, () => UButtonModel());
    buttonModel2 = createModel(context, () => UButtonModel());
  }

  @override
  void dispose() {
    progressStepModels.dispose();
    stepTimerModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
