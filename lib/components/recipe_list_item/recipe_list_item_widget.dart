import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'recipe_list_item_model.dart';
export 'recipe_list_item_model.dart';

class RecipeListItemWidget extends StatefulWidget {
  const RecipeListItemWidget({
    super.key,
    String? imgDesc,
    this.recipeDetails,
  }) : this.imgDesc = imgDesc ??
            'https://dimg.dreamflow.cloud/v1/image/fresh%20green%20salad%20with%20avocado%20and%20seeds';

  final String imgDesc;
  final RecipeStruct? recipeDetails;

  @override
  State<RecipeListItemWidget> createState() => _RecipeListItemWidgetState();
}

class _RecipeListItemWidgetState extends State<RecipeListItemWidget> {
  late RecipeListItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipeListItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(valueOrDefault<double>(
            FFAppConstants.Padding2.toDouble(),
            0.0,
          )),
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(valueOrDefault<double>(
                FFAppConstants.Padding2.toDouble(),
                0.0,
              )),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 160.0,
                  child: Stack(
                    alignment: AlignmentDirectional(-1.0, -1.0),
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().SelectedRecipe = RecipeStruct();
                          safeSetState(() {});

                          context.pushNamed(RecipeDetailWidget.routeName);
                        },
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 0),
                          fadeOutDuration: Duration(milliseconds: 0),
                          imageUrl: valueOrDefault<String>(
                            widget.imgDesc,
                            'https://dimg.dreamflow.cloud/v1/image/fresh%20green%20salad%20with%20avocado%20and%20seeds',
                          ),
                          height: 160.0,
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 1.0),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Container(
                                    width: 24.0,
                                    height: 24.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Visibility(
                                      visible: widget.recipeDetails!.isFavorite
                                          ? true
                                          : false,
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.favorite_rounded,
                                          color:
                                              widget.recipeDetails!.isFavorite
                                                  ? FlutterFlowTheme.of(context)
                                                      .error
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius: BorderRadius.circular(
                                            valueOrDefault<double>(
                                          FFAppConstants.Padding1.toDouble(),
                                          0.0,
                                        )),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              FFAppConstants.Padding1
                                                  .toDouble(),
                                              0.0,
                                            ),
                                            valueOrDefault<double>(
                                              FFAppConstants.Padding0
                                                  .toDouble(),
                                              0.0,
                                            ),
                                            valueOrDefault<double>(
                                              FFAppConstants.Padding1
                                                  .toDouble(),
                                              0.0,
                                            ),
                                            valueOrDefault<double>(
                                              FFAppConstants.Padding0
                                                  .toDouble(),
                                              0.0,
                                            )),
                                        child: Container(
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.recipeDetails?.foodType
                                                  ?.name,
                                              'Nullify',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.manrope(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .onPrimary,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                  lineHeight: 1.3,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(valueOrDefault<double>(
                        FFAppConstants.Padding2.toDouble(),
                        0.0,
                      )),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().SelectedRecipe = RecipeStruct();
                          safeSetState(() {});

                          context.pushNamed(RecipeDetailWidget.routeName);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.recipeDetails?.name,
                                'Nullify that recipe',
                              ),
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                    lineHeight: 1.45,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.schedule_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 14.0,
                                    ),
                                    Text(
                                      '${valueOrDefault<String>(
                                        widget.recipeDetails?.foodType?.name,
                                        '-1',
                                      )} мин',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.manrope(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                            lineHeight: 1.3,
                                          ),
                                    ),
                                  ].divide(SizedBox(
                                      width:
                                          FFAppConstants.Padding0.toDouble())),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.local_fire_department_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 14.0,
                                    ),
                                    Text(
                                      '${valueOrDefault<String>(
                                        widget
                                            .recipeDetails?.nutritions.calories
                                            .toString(),
                                        '-1',
                                      )} ккал',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.manrope(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                            lineHeight: 1.3,
                                          ),
                                    ),
                                  ].divide(SizedBox(
                                      width:
                                          FFAppConstants.Padding0.toDouble())),
                                ),
                              ].divide(SizedBox(
                                  width: FFAppConstants.Padding2.toDouble())),
                            ),
                          ].divide(SizedBox(
                              height: FFAppConstants.Padding0.toDouble())),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
