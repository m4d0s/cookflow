import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'recipe_card_mini_model.dart';
export 'recipe_card_mini_model.dart';

class RecipeCardMiniWidget extends StatefulWidget {
  const RecipeCardMiniWidget({
    super.key,
    this.mealEntry,
    bool? isDeleted,
    bool? hideDelete,
  })  : this.isDeleted = isDeleted ?? false,
        this.hideDelete = hideDelete ?? false;

  final MealEntryStruct? mealEntry;
  final bool isDeleted;
  final bool hideDelete;

  @override
  State<RecipeCardMiniWidget> createState() => _RecipeCardMiniWidgetState();
}

class _RecipeCardMiniWidgetState extends State<RecipeCardMiniWidget> {
  late RecipeCardMiniModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipeCardMiniModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.mealPic = await actions.base64ToFFUploadedFile(
        widget.mealEntry?.meal.pictureBase64,
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
    return Visibility(
      visible: !widget.isDeleted,
      child: Container(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              0.0,
              0.0,
              0.0,
              valueOrDefault<double>(
                FFAppConstants.Padding1.toDouble(),
                0.0,
              )),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).surfaceVariant,
              borderRadius: BorderRadius.circular(valueOrDefault<double>(
                FFAppConstants.Padding2.toDouble(),
                0.0,
              )),
              shape: BoxShape.rectangle,
            ),
            child: Padding(
              padding: EdgeInsets.all(valueOrDefault<double>(
                FFAppConstants.Padding1.toDouble(),
                0.0,
              )),
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(valueOrDefault<double>(
                              FFAppConstants.Padding1.toDouble(),
                              0.0,
                            )),
                            child: Container(
                              width: 64.0,
                              height: 64.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    valueOrDefault<double>(
                                  FFAppConstants.Padding1.toDouble(),
                                  0.0,
                                )),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.no_photography,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 48.0,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.memory(
                                        _model.mealPic?.bytes ??
                                            Uint8List.fromList([]),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      widget.mealEntry?.meal.name,
                                      'Lorem Insum Lorem Insum',
                                    ),
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.55,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.local_fire_department_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 14.0,
                                      ),
                                      Text(
                                        '${widget.mealEntry?.meal.nutritions.calories.toString()} ккал',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.fastfood_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 14.0,
                                          ),
                                          Text(
                                            '${widget.mealEntry?.meal.products.length.toString()} ${() {
                                              if (functions
                                                      .sklonenie(widget
                                                          .mealEntry!
                                                          .meal
                                                          .products
                                                          .length)
                                                      .toString() ==
                                                  '1') {
                                                return 'продукт';
                                              } else if (functions
                                                      .sklonenie(widget
                                                          .mealEntry!
                                                          .meal
                                                          .products
                                                          .length)
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
                                                      .secondaryText,
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
                                        ].divide(SizedBox(width: 4.0)),
                                      ),
                                    ].divide(SizedBox(width: 8.0)),
                                  ),
                                  Text(
                                    dateTimeFormat(
                                      "Время принятия: HH:mm",
                                      widget.mealEntry!.date!,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
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
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ),
                          ),
                        ]
                            .divide(SizedBox(width: 8.0))
                            .addToStart(SizedBox(width: 8.0)),
                      ),
                    ),
                    if (widget.hideDelete)
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).error,
                        borderRadius: 8.0,
                        buttonSize: 36.0,
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        icon: Icon(
                          Icons.close_rounded,
                          color: FlutterFlowTheme.of(context).error,
                          size: 20.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                  ].divide(SizedBox(width: FFAppConstants.Padding2.toDouble())),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
