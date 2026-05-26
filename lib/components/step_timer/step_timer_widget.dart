import '/archive/switch_component/switch_component_widget.dart';
import '/components/button/button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'step_timer_model.dart';
export 'step_timer_model.dart';

class StepTimerWidget extends StatefulWidget {
  const StepTimerWidget({
    super.key,
    bool? autoplay,
    bool? isRunning,
    int? timeAmount,
    this.timeLeft,
  })  : this.autoplay = autoplay ?? true,
        this.isRunning = isRunning ?? false,
        this.timeAmount = timeAmount ?? 60000;

  final bool autoplay;
  final bool isRunning;
  final int timeAmount;
  final int? timeLeft;

  @override
  State<StepTimerWidget> createState() => _StepTimerWidgetState();
}

class _StepTimerWidgetState extends State<StepTimerWidget> {
  late StepTimerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StepTimerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryContainer,
            borderRadius: BorderRadius.circular(24.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer_rounded,
                            color:
                                FlutterFlowTheme.of(context).onPrimaryContainer,
                            size: 24.0,
                          ),
                          Text(
                            'Таймер',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.manrope(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .onPrimaryContainer,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.45,
                                ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                      if (!FFAppConstants.TrueValue)
                        wrapWithModel(
                          model: _model.switchComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: SwitchComponentWidget(
                            label: 'Автоплей',
                            labelPresent: true,
                            variant: 'iOS',
                            active: valueOrDefault<bool>(
                              widget.autoplay,
                              true,
                            ),
                          ),
                        ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlutterFlowTimer(
                        initialTime: widget.timeAmount,
                        getDisplayTime: (value) =>
                            StopWatchTimer.getDisplayTime(value,
                                milliSecond: false),
                        controller: _model.timerController,
                        updateStateInterval:
                            Duration(milliseconds: widget.timeLeft!),
                        onChanged: (value, displayTime, shouldUpdate) {
                          _model.timerMilliseconds = value;
                          _model.timerValue = displayTime;
                          if (shouldUpdate) safeSetState(() {});
                        },
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  font: GoogleFonts.manrope(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  fontSize: 48.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (widget.autoplay)
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 48.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.remove_circle_outline_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .onPrimaryContainer,
                                size: 32.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: ButtonWidget(
                              content: widget.isRunning ? 'Пауза' : 'Старт',
                              iconPresent: false,
                              iconEndPresent: false,
                              variant: 'primary',
                              size: 'medium',
                              fullWidth: false,
                              loading: false,
                              disabled: false,
                            ),
                          ),
                          if (widget.autoplay)
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 48.0,
                              fillColor: Colors.transparent,
                              icon: Icon(
                                Icons.add_circle_outline_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .onPrimaryContainer,
                                size: 32.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ].divide(SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
