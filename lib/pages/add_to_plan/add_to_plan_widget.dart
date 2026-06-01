import '/backend/schema/enums/enums.dart';
import '/components/add_to_plan_item/add_to_plan_item_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_to_plan_model.dart';
export 'add_to_plan_model.dart';

class AddToPlanWidget extends StatefulWidget {
  const AddToPlanWidget({super.key});

  static String routeName = 'AddToPlan';
  static String routePath = '/addToPlan';

  @override
  State<AddToPlanWidget> createState() => _AddToPlanWidgetState();
}

class _AddToPlanWidgetState extends State<AddToPlanWidget> {
  late AddToPlanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddToPlanModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.close,
              color: FlutterFlowTheme.of(context).onPrimary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Добавить в план питания',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.manrope(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).onPrimary,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(valueOrDefault<double>(
            FFAppConstants.Padding2.toDouble(),
            0.0,
          )),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          valueOrDefault<double>(
                            FFAppConstants.Padding2.toDouble(),
                            0.0,
                          ),
                          0.0,
                          0.0),
                      child: wrapWithModel(
                        model: _model.textFieldModel,
                        updateCallback: () => safeSetState(() {}),
                        child: TextFieldWidget(
                          variant: Textfield.ghost,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final recipeList = FFAppState().RecipeList.toList();

                        return SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: List.generate(recipeList.length,
                                (recipeListIndex) {
                              final recipeListItem =
                                  recipeList[recipeListIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().updateSelectedDayStruct(
                                    (e) => e
                                      ..updateCompletedRecipes(
                                        (e) => e.add(functions
                                            .mealEntryDefine(recipeListItem)),
                                      ),
                                  );
                                  safeSetState(() {});
                                  if (Navigator.of(context).canPop()) {
                                    context.pop();
                                  }
                                  context.pushNamed(MealPlanWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.recipeCard2Models.getModel(
                                    recipeListIndex.toString(),
                                    recipeListIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: AddToPlanItemWidget(
                                    key: Key(
                                      'Key708_${recipeListIndex.toString()}',
                                    ),
                                    imgDesc: recipeListItem.picture,
                                    recipeDetails: recipeListItem,
                                  ),
                                ),
                              );
                            }).divide(SizedBox(
                                height: FFAppConstants.Padding2.toDouble())),
                          ),
                        );
                      },
                    ),
                  ),
                ].divide(SizedBox(height: 32.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
