import '/components/button/button_widget.dart';
import '/components/progress_step/progress_step_widget.dart';
import '/components/step_timer/step_timer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cooking_mode_widget.dart' show CookingModeWidget;
import 'package:flutter/material.dart';

class CookingModeModel extends FlutterFlowModel<CookingModeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProgressStep.
  late ProgressStepModel progressStepModel1;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel2;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel3;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel4;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel5;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel6;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel7;
  // Model for ProgressStep.
  late ProgressStepModel progressStepModel8;
  // Model for StepTimer.
  late StepTimerModel stepTimerModel;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    progressStepModel1 = createModel(context, () => ProgressStepModel());
    progressStepModel2 = createModel(context, () => ProgressStepModel());
    progressStepModel3 = createModel(context, () => ProgressStepModel());
    progressStepModel4 = createModel(context, () => ProgressStepModel());
    progressStepModel5 = createModel(context, () => ProgressStepModel());
    progressStepModel6 = createModel(context, () => ProgressStepModel());
    progressStepModel7 = createModel(context, () => ProgressStepModel());
    progressStepModel8 = createModel(context, () => ProgressStepModel());
    stepTimerModel = createModel(context, () => StepTimerModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    progressStepModel1.dispose();
    progressStepModel2.dispose();
    progressStepModel3.dispose();
    progressStepModel4.dispose();
    progressStepModel5.dispose();
    progressStepModel6.dispose();
    progressStepModel7.dispose();
    progressStepModel8.dispose();
    stepTimerModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
