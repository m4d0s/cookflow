import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'recipe_card2_model.dart';
export 'recipe_card2_model.dart';

class RecipeCard2Widget extends StatefulWidget {
  const RecipeCard2Widget({
    super.key,
    this.recipeDetails,
  });

  final RecipeStruct? recipeDetails;

  @override
  State<RecipeCard2Widget> createState() => _RecipeCard2WidgetState();
}

class _RecipeCard2WidgetState extends State<RecipeCard2Widget> {
  late RecipeCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipeCard2Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.recipe2Pic = await actions.base64ToFFUploadedFile(
        widget.recipeDetails?.pictureBase64,
      );
      _model.recipeTags1 = await actions.getRecipeTags(
        widget.recipeDetails!,
      );
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Align(
                      alignment: AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding: EdgeInsets.all(valueOrDefault<double>(
                          FFAppConstants.Padding0.toDouble(),
                          0.0,
                        )),
                        child: Container(
                          alignment: AlignmentDirectional(-1.0, 1.0),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.no_photography,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 48.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.memory(
                          _model.recipe2Pic?.bytes ?? Uint8List.fromList([]),
                          height: 200.0,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(valueOrDefault<double>(
                  FFAppConstants.Padding2.toDouble(),
                  0.0,
                )),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 8.0, 4.0),
                          child: Container(
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_fire_department_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 14.0,
                                ),
                                Text(
                                  '${valueOrDefault<String>(
                                    widget.recipeDetails?.nutritions.calories
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                        lineHeight: 1.3,
                                      ),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 4.0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.fastfood_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 14.0,
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.recipeTags1?.foodname,
                                      '[Не задано]',
                                    ),
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
                                ].divide(SizedBox(width: 4.0)),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).surface90,
                            borderRadius: BorderRadius.circular(12.0),
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 4.0, 8.0, 4.0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.eco_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 14.0,
                                  ),
                                  Text(
                                    '${widget.recipeDetails?.products.length.toString()} ${() {
                                      if (functions
                                              .sklonenie(widget.recipeDetails!
                                                  .products.length)
                                              .toString() ==
                                          '1') {
                                        return 'продукт';
                                      } else if (functions
                                              .sklonenie(widget.recipeDetails!
                                                  .products.length)
                                              .toString() ==
                                          '2') {
                                        return 'продукта';
                                      } else {
                                        return 'продуктов';
                                      }
                                    }()}',
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
                                ].divide(SizedBox(width: 4.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (widget.recipeDetails?.isFavorite ?? true)
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).surface80,
                              borderRadius: BorderRadius.circular(9999.0),
                              shape: BoxShape.rectangle,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.favorite_rounded,
                              color: FlutterFlowTheme.of(context).error,
                              size: 18.0,
                            ),
                          ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            valueOrDefault<String>(
                              widget.recipeDetails?.name,
                              'Some recipe in list',
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                  lineHeight: 1.45,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ].divide(SizedBox(width: 4.0)),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.recipeDetails?.info,
                          'Lorem Inspus something i forgot so i just copy some words or just dont do it and gone some water in the rain lol',
                        ),
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
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
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
