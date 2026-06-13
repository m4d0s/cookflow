import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dark_mode_setting_model.dart';
export 'dark_mode_setting_model.dart';

class DarkModeSettingWidget extends StatefulWidget {
  const DarkModeSettingWidget({
    super.key,
    Color? iconBg,
    this.icon,
    Color? iconColor,
    String? label,
    String? subtitle,
  })  : this.iconBg = iconBg ?? const Color(0x00000000),
        this.iconColor = iconColor ?? const Color(0x00000000),
        this.label = label ?? 'Dark Mode',
        this.subtitle = subtitle ?? 'Adjust appearance for low light';

  final Color iconBg;
  final Widget? icon;
  final Color iconColor;
  final String label;
  final String subtitle;

  @override
  State<DarkModeSettingWidget> createState() => _DarkModeSettingWidgetState();
}

class _DarkModeSettingWidgetState extends State<DarkModeSettingWidget> {
  late DarkModeSettingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DarkModeSettingModel());

    _model.switchValue = false;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      constraints: BoxConstraints(
        maxHeight: 300.0,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(valueOrDefault<double>(
              FFAppConstants.Padding2.toDouble(),
              0.0,
            )),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 36.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        widget.iconBg,
                        Color(0x00000000),
                      ),
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: widget.icon!,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.label,
                            'Dark Mode',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.subtitle,
                            'Adjust appearance for low light',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ].divide(SizedBox(height: 2.0)),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                    child: Switch.adaptive(
                      value: _model.switchValue!,
                      onChanged: (newValue) async {
                        safeSetState(() => _model.switchValue = newValue);
                        if (newValue) {
                          FFAppState().DarkMode = true;
                          safeSetState(() {});
                          setDarkModeSetting(
                            context,
                            FFAppState().DarkMode
                                ? ThemeMode.dark
                                : ThemeMode.light,
                          );
                        } else {
                          FFAppState().DarkMode = false;
                          safeSetState(() {});
                          setDarkModeSetting(
                            context,
                            FFAppState().DarkMode
                                ? ThemeMode.dark
                                : ThemeMode.light,
                          );
                        }
                      },
                      activeColor: FlutterFlowTheme.of(context).accent3,
                      activeTrackColor: FlutterFlowTheme.of(context).primary,
                      inactiveTrackColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      inactiveThumbColor:
                          FlutterFlowTheme.of(context).fullContrast,
                    ),
                  ),
                ].divide(SizedBox(width: FFAppConstants.Padding1.toDouble())),
              ),
            ),
          ),
          Container(
            height: 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).alternate,
              shape: BoxShape.rectangle,
            ),
          ),
        ],
      ),
    );
  }
}
