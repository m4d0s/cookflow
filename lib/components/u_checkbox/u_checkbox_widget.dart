import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'u_checkbox_model.dart';
export 'u_checkbox_model.dart';

class UCheckboxWidget extends StatefulWidget {
  const UCheckboxWidget({
    super.key,
    String? label,
    String? subtitle,
    Color? color,
    bool? isChecked,
    bool? hasSubtitle,
    bool? disabled,
  })  : this.label = label ?? '⠀',
        this.subtitle = subtitle ?? 'Receive weekly updates',
        this.color = color ?? const Color(0x00000000),
        this.isChecked = isChecked ?? true,
        this.hasSubtitle = hasSubtitle ?? false,
        this.disabled = disabled ?? false;

  final String label;
  final String subtitle;
  final Color color;
  final bool isChecked;
  final bool hasSubtitle;
  final bool disabled;

  @override
  State<UCheckboxWidget> createState() => _UCheckboxWidgetState();
}

class _UCheckboxWidgetState extends State<UCheckboxWidget> {
  late UCheckboxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UCheckboxModel());
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
        child: Container(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          widget.hasSubtitle ? 0.0 : 0.0,
                          0.0,
                        ),
                        valueOrDefault<double>(
                          widget.hasSubtitle ? 3.0 : 0.0,
                          0.0,
                        ),
                        valueOrDefault<double>(
                          widget.hasSubtitle ? 0.0 : 0.0,
                          0.0,
                        ),
                        valueOrDefault<double>(
                          widget.hasSubtitle ? 0.0 : 0.0,
                          0.0,
                        )),
                    child: Container(
                      child: Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: widget.isChecked
                              ? Color(0x00000000)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(8.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: widget.isChecked
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context).alternate,
                            width: widget.isChecked ? 2.0 : 2.0,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Visibility(
                          visible: widget.isChecked ? true : false,
                          child: Icon(
                            Icons.check_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ),
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
                            'Email Notifications',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                                lineHeight: 1.55,
                              ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (widget.hasSubtitle ? true : false)
                          Container(
                            child: Container(
                              child: Text(
                                valueOrDefault<String>(
                                  widget.subtitle,
                                  'Receive weekly updates',
                                ),
                                maxLines: 3,
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
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                      lineHeight: 1.5,
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
