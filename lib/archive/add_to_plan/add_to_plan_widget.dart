import '/backend/schema/enums/enums.dart';
import '/components/recipe_list_item/recipe_list_item_widget.dart';
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(valueOrDefault<double>(
                FFAppConstants.Padding2.toDouble(),
                0.0,
              )),
              child: Column(
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
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    decoration: BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final recipe = FFAppState().RecipeList.toList();

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(recipe.length,
                                    (recipeIndex) {
                              final recipeItem = recipe[recipeIndex];
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
                                            .mealEntryDefine(recipeItem)),
                                      ),
                                  );
                                  safeSetState(() {});
                                  if (Navigator.of(context).canPop()) {
                                    context.pop();
                                  }
                                  context.pushNamed(MealPlanWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.recipeListItemModels.getModel(
                                    recipeItem.id.toString(),
                                    recipeIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: RecipeListItemWidget(
                                    key: Key(
                                      'Keyzxr_${recipeItem.id.toString()}',
                                    ),
                                    imgDesc: recipeItem.picture,
                                    recipeDetails: recipeItem,
                                  ),
                                ),
                              );
                            })
                                .divide(SizedBox(
                                    height: FFAppConstants.Padding1.toDouble()))
                                .around(SizedBox(
                                    height:
                                        FFAppConstants.Padding1.toDouble())),
                          ),
                        );
                      },
                    ),
                  ),
                ].divide(SizedBox(height: FFAppConstants.Padding2.toDouble())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
