import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'achievement_badge_model.dart';
export 'achievement_badge_model.dart';

class AchievementBadgeWidget extends StatefulWidget {
  const AchievementBadgeWidget({
    super.key,
    Color? tone,
    this.icon,
    String? label,
  })  : this.tone = tone ?? const Color(0x00000000),
        this.label = label ?? '150 XP Earned';

  final Color tone;
  final Widget? icon;
  final String label;

  @override
  State<AchievementBadgeWidget> createState() => _AchievementBadgeWidgetState();
}

class _AchievementBadgeWidgetState extends State<AchievementBadgeWidget> {
  late AchievementBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AchievementBadgeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    widget.tone,
                    FlutterFlowTheme.of(context).warning,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                  shape: BoxShape.rectangle,
                ),
                child: widget.icon!,
              ),
              Text(
                valueOrDefault<String>(
                  widget.label,
                  '150 XP Earned',
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.manrope(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
