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
    this.icon,
    bool? iconPresent,
    this.iconEnd,
    bool? iconEndPresent,
    String? content,
    String? variant,
    String? size,
    bool? fullWidth,
    bool? loading,
    bool? disabled,
  })  : this.iconPresent = iconPresent ?? true,
        this.iconEndPresent = iconEndPresent ?? false,
        this.content = content ?? 'Log 250ml Cup',
        this.variant = variant ?? 'secondary',
        this.size = size ?? 'medium',
        this.fullWidth = fullWidth ?? true,
        this.loading = loading ?? false,
        this.disabled = disabled ?? false;

  final Widget? icon;
  final bool iconPresent;
  final Widget? iconEnd;
  final bool iconEndPresent;
  final String content;
  final String variant;
  final String size;
  final bool fullWidth;
  final bool loading;
  final bool disabled;

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
      opacity: valueOrDefault<double>(
        valueOrDefault<bool>(
          widget.disabled,
          false,
        )
            ? 0.55
            : 1.0,
        1.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (valueOrDefault<String>(
                    widget.variant,
                    'secondary',
                  ) ==
                  'secondary') {
                return FlutterFlowTheme.of(context).secondary;
              } else if (valueOrDefault<String>(
                    widget.variant,
                    'secondary',
                  ) ==
                  'outline') {
                return Colors.transparent;
              } else if (valueOrDefault<String>(
                    widget.variant,
                    'secondary',
                  ) ==
                  'ghost') {
                return Colors.transparent;
              } else if (valueOrDefault<String>(
                    widget.variant,
                    'secondary',
                  ) ==
                  'destructive') {
                return FlutterFlowTheme.of(context).error;
              } else {
                return FlutterFlowTheme.of(context).primary;
              }
            }(),
            FlutterFlowTheme.of(context).secondary,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'small') {
                  return 8.0;
                } else if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'large') {
                  return 24.0;
                } else {
                  return 12.0;
                }
              }(),
              12.0,
            )),
            topRight: Radius.circular(valueOrDefault<double>(
              () {
                if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'small') {
                  return 8.0;
                } else if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'large') {
                  return 24.0;
                } else {
                  return 12.0;
                }
              }(),
              12.0,
            )),
            bottomLeft: Radius.circular(valueOrDefault<double>(
              () {
                if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'small') {
                  return 8.0;
                } else if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'large') {
                  return 24.0;
                } else {
                  return 12.0;
                }
              }(),
              12.0,
            )),
            bottomRight: Radius.circular(valueOrDefault<double>(
              () {
                if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'small') {
                  return 8.0;
                } else if (valueOrDefault<String>(
                      widget.size,
                      'medium',
                    ) ==
                    'large') {
                  return 24.0;
                } else {
                  return 12.0;
                }
              }(),
              12.0,
            )),
          ),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: valueOrDefault<Color>(
              valueOrDefault<String>(
                        widget.variant,
                        'secondary',
                      ) ==
                      'outline'
                  ? FlutterFlowTheme.of(context).alternate
                  : Colors.transparent,
              Colors.transparent,
            ),
            width: valueOrDefault<double>(
              valueOrDefault<String>(
                        widget.variant,
                        'secondary',
                      ) ==
                      'outline'
                  ? 1.0
                  : 0.0,
              0.0,
            ),
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            Opacity(
              opacity: valueOrDefault<double>(
                valueOrDefault<bool>(
                  widget.loading,
                  false,
                )
                    ? 0.0
                    : 1.0,
                1.0,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    valueOrDefault<double>(
                      () {
                        if (valueOrDefault<String>(
                              widget.size,
                              'medium',
                            ) ==
                            'small') {
                          return 16.0;
                        } else if (valueOrDefault<String>(
                              widget.size,
                              'medium',
                            ) ==
                            'large') {
                          return 32.0;
                        } else {
                          return 24.0;
                        }
                      }(),
                      24.0,
                    ),
                    valueOrDefault<double>(
                      () {
                        if (valueOrDefault<String>(
                              widget.size,
                              'medium',
                            ) ==
                            'small') {
                          return 4.0;
                        } else if (valueOrDefault<String>(
                              widget.size,
                              'medium',
                            ) ==
                            'large') {
                          return 16.0;
                        } else {
                          return 8.0;
                        }
                      }(),
                      8.0,
                    ),
                    valueOrDefault<double>(
                      () {
                        if (valueOrDefault<String>(
                              widget.size,
                              'medium',
                            ) ==
                            'small') {
                          return 16.0;
                        } else if (valueOrDefault<String>(
                              widget.size,
                              'medium',
                            ) ==
                            'large') {
                          return 32.0;
                        } else {
                          return 24.0;
                        }
                      }(),
                      24.0,
                    ),
                    valueOrDefault<double>(
                      () {
                        if (valueOrDefault<String>(
                              widget.size,
                              'medium',
                            ) ==
                            'small') {
                          return 4.0;
                        } else if (valueOrDefault<String>(
                              widget.size,
                              'medium',
                            ) ==
                            'large') {
                          return 16.0;
                        } else {
                          return 8.0;
                        }
                      }(),
                      8.0,
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
                        'Log 250ml Cup',
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
                            color: valueOrDefault<Color>(
                              () {
                                if (valueOrDefault<String>(
                                      widget.variant,
                                      'secondary',
                                    ) ==
                                    'secondary') {
                                  return FlutterFlowTheme.of(context)
                                      .onSecondary;
                                } else if (valueOrDefault<String>(
                                      widget.variant,
                                      'secondary',
                                    ) ==
                                    'outline') {
                                  return FlutterFlowTheme.of(context)
                                      .primaryText;
                                } else if (valueOrDefault<String>(
                                      widget.variant,
                                      'secondary',
                                    ) ==
                                    'ghost') {
                                  return FlutterFlowTheme.of(context).primary;
                                } else if (valueOrDefault<String>(
                                      widget.variant,
                                      'secondary',
                                    ) ==
                                    'destructive') {
                                  return FlutterFlowTheme.of(context).onError;
                                } else {
                                  return FlutterFlowTheme.of(context).onPrimary;
                                }
                              }(),
                              FlutterFlowTheme.of(context).onSecondary,
                            ),
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
            if (valueOrDefault<bool>(
              valueOrDefault<bool>(
                widget.loading,
                false,
              )
                  ? true
                  : false,
              false,
            ))
              CircularPercentIndicator(
                percent: 0.0,
                radius: 7.0,
                lineWidth: 2.0,
                animation: true,
                animateFromLastPercent: true,
                progressColor: valueOrDefault<Color>(
                  () {
                    if (valueOrDefault<String>(
                          widget.variant,
                          'secondary',
                        ) ==
                        'secondary') {
                      return FlutterFlowTheme.of(context).onSecondary;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'secondary',
                        ) ==
                        'outline') {
                      return FlutterFlowTheme.of(context).primaryText;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'secondary',
                        ) ==
                        'ghost') {
                      return FlutterFlowTheme.of(context).primary;
                    } else if (valueOrDefault<String>(
                          widget.variant,
                          'secondary',
                        ) ==
                        'destructive') {
                      return FlutterFlowTheme.of(context).onError;
                    } else {
                      return FlutterFlowTheme.of(context).onPrimary;
                    }
                  }(),
                  FlutterFlowTheme.of(context).onSecondary,
                ),
                backgroundColor: FlutterFlowTheme.of(context).alternate,
              ),
          ],
        ),
      ),
    );
  }
}
