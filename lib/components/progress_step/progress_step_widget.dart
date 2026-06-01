import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'progress_step_model.dart';
export 'progress_step_model.dart';

class ProgressStepWidget extends StatefulWidget {
  const ProgressStepWidget({
    super.key,
    required this.step,
  });

  final int? step;

  @override
  State<ProgressStepWidget> createState() => _ProgressStepWidgetState();
}

class _ProgressStepWidgetState extends State<ProgressStepWidget> {
  late ProgressStepModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressStepModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.state = () {
        if (widget.step! > FFAppState().currentStep) {
          return ProgressStep.future;
        } else if (widget.step! < FFAppState().currentStep) {
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
