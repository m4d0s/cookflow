import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'button_model.dart';
export 'button_model.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    String? content,
    this.icon,
    bool? iconPresent,
    this.iconEnd,
    bool? iconEndPresent,
    String? variant,
    String? size,
    bool? fullWidth,
    bool? loading,
    bool? disabled,
    Color? maincolor,
  })  : this.content = content ?? 'Начать готовку',
        this.iconPresent = iconPresent ?? true,
        this.iconEndPresent = iconEndPresent ?? false,
        this.variant = variant ?? 'primary',
        this.size = size ?? 'large',
        this.fullWidth = fullWidth ?? true,
        this.loading = loading ?? false,
        this.disabled = disabled ?? false,
        this.maincolor = maincolor ?? Colors.transparent;

  final String content;
  final Widget? icon;
  final bool iconPresent;
  final Widget? iconEnd;
  final bool iconEndPresent;
  final String variant;
  final String size;
  final bool fullWidth;
  final bool loading;
  final bool disabled;
  final Color maincolor;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  late ButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.disabled ? 0.55 : 1.0,
      child: Container(
        decoration: BoxDecoration(
          color: () {
            if (widget.variant == 'secondary') {
              return FlutterFlowTheme.of(context).secondary;
            } else if (widget.variant == 'outline') {
              return Colors.transparent;
            } else if (widget.variant == 'ghost') {
              return Colors.transparent;
            } else if (widget.variant == 'destructive') {
              return FlutterFlowTheme.of(context).error;
            } else {
              return FlutterFlowTheme.of(context).primary;
            }
          }(),
          borderRadius: BorderRadius.circular(valueOrDefault<double>(
            FFAppConstants.Padding2.toDouble(),
            0.0,
          )),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: widget.variant == 'outline'
                ? FlutterFlowTheme.of(context).alternate
                : Colors.transparent,
            width: widget.variant == 'outline'
                ? FFAppConstants.FrameBold.toDouble()
                : FFAppConstants.FrameThick.toDouble(),
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            Opacity(
              opacity: widget.loading ? 0.0 : 1.0,
              child: Padding(
                padding: EdgeInsets.all(valueOrDefault<double>(
                  FFAppConstants.Padding1.toDouble(),
                  0.0,
                )),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (valueOrDefault<bool>(
                      widget.iconPresent,
                      true,
                    ))
                      widget.icon!,
                    Text(
                      valueOrDefault<String>(
                        widget.content,
                        'Начать готовку',
                      ),
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.manrope(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            color: widget.maincolor,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                      overflow: TextOverflow.clip,
                    ),
                    if (valueOrDefault<bool>(
                      widget.iconEndPresent,
                      false,
                    ))
                      widget.iconEnd!,
                  ].divide(SizedBox(width: 8.0)),
                ),
              ),
            ),
            if (widget.loading ? true : false)
              CircularPercentIndicator(
                percent: 0.0,
                radius: 7.0,
                lineWidth: 2.0,
                animation: true,
                animateFromLastPercent: true,
                progressColor: () {
                  if (widget.variant == 'secondary') {
                    return FlutterFlowTheme.of(context).onSecondary;
                  } else if (widget.variant == 'outline') {
                    return FlutterFlowTheme.of(context).primaryText;
                  } else if (widget.variant == 'ghost') {
                    return FlutterFlowTheme.of(context).primary;
                  } else if (widget.variant == 'destructive') {
                    return FlutterFlowTheme.of(context).onError;
                  } else {
                    return FlutterFlowTheme.of(context).onPrimary;
                  }
                }(),
                backgroundColor: FlutterFlowTheme.of(context).alternate,
              ),
          ],
        ),
      ),
    );
  }
}
