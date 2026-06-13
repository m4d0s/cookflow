import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'step_counter_model.dart';
export 'step_counter_model.dart';

class StepCounterWidget extends StatefulWidget {
  const StepCounterWidget({
    super.key,
    required this.step,
  });

  final int? step;

  @override
  State<StepCounterWidget> createState() => _StepCounterWidgetState();
}

class _StepCounterWidgetState extends State<StepCounterWidget> {
  late StepCounterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepCounterModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.state = () {
        if (widget.step! > FFAppState().CurrentStep) {
          return ProgressStep.future;
        } else if (widget.step! < FFAppState().CurrentStep) {
          return ProgressStep.done;
        } else {
          return ProgressStep.ongoing;
        }
      }();
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
      child: Container(
        child: Container(
          height: 6.0,
          decoration: BoxDecoration(
            color: () {
              if (_model.state == ProgressStep.ongoing) {
                return FlutterFlowTheme.of(context).primary;
              } else if (_model.state == ProgressStep.done) {
                return FlutterFlowTheme.of(context).primary40;
              } else {
                return FlutterFlowTheme.of(context).alternate;
              }
            }(),
            borderRadius: BorderRadius.circular(3.0),
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}
