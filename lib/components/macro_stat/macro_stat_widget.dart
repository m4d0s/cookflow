import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'macro_stat_model.dart';
export 'macro_stat_model.dart';

class MacroStatWidget extends StatefulWidget {
  const MacroStatWidget({
    super.key,
    String? label,
    String? value,
    double? progress,
  })  : this.label = label ?? 'Proteins',
        this.value = value ?? '184g',
        this.progress = progress ?? 0.7;

  final String label;
  final String value;
  final double progress;

  @override
  State<MacroStatWidget> createState() => _MacroStatWidgetState();
}

class _MacroStatWidgetState extends State<MacroStatWidget> {
  late MacroStatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MacroStatModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              valueOrDefault<String>(
                widget.label,
                'Proteins',
              ),
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    font: GoogleFonts.manrope(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).onSecondary,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ],
        ),
        LinearPercentIndicator(
          percent: valueOrDefault<double>(
            widget.progress,
            0.7,
          ),
          lineHeight: 6.0,
          animation: true,
          animateFromLastPercent: true,
          progressColor: FlutterFlowTheme.of(context).success,
          backgroundColor: FlutterFlowTheme.of(context).alternate,
          barRadius: Radius.circular(9999.0),
          padding: EdgeInsets.zero,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              valueOrDefault<String>(
                widget.value,
                '184g',
              ),
              textAlign: TextAlign.end,
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    font: GoogleFonts.manrope(
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).onSecondary,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ],
        ),
      ].divide(SizedBox(height: 2.0)),
    );
  }
}
