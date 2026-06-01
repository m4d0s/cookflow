import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form_section_header_model.dart';
export 'form_section_header_model.dart';

class FormSectionHeaderWidget extends StatefulWidget {
  const FormSectionHeaderWidget({
    super.key,
    this.actionIcon,
    String? actionLabel,
    bool? hasAction,
    String? title,
  })  : this.actionLabel = actionLabel ?? 'Добавить',
        this.hasAction = hasAction ?? true,
        this.title = title ?? 'Ингредиенты';

  final Widget? actionIcon;
  final String actionLabel;
  final bool hasAction;
  final String title;

  @override
  State<FormSectionHeaderWidget> createState() =>
      _FormSectionHeaderWidgetState();
}

class _FormSectionHeaderWidgetState extends State<FormSectionHeaderWidget> {
  late FormSectionHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormSectionHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              valueOrDefault<String>(
                widget.title,
                'Ингредиенты',
              ),
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    font: GoogleFonts.manrope(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    lineHeight: 1.45,
                  ),
            ),
            if (valueOrDefault<bool>(
              widget.hasAction,
              true,
            ))
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.actionIcon!,
                  Text(
                    valueOrDefault<String>(
                      widget.actionLabel,
                      'Добавить',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          font: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                          lineHeight: 1.4,
                        ),
                  ),
                ].divide(SizedBox(width: 4.0)),
              ),
          ],
        ),
      ),
    );
  }
}
