import '/archive/tab_item/tab_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tab_group_model.dart';
export 'tab_group_model.dart';

class TabGroupWidget extends StatefulWidget {
  const TabGroupWidget({
    super.key,
    String? label1,
    String? label2,
    bool? label2Present,
    String? label3,
    bool? label3Present,
    String? label4,
    bool? label4Present,
    String? label5,
    bool? label5Present,
  })  : this.label1 = label1 ?? 'Все',
        this.label2 = label2 ?? 'Овощи',
        this.label2Present = label2Present ?? true,
        this.label3 = label3 ?? 'Мясо',
        this.label3Present = label3Present ?? true,
        this.label4 = label4 ?? 'Бакалея',
        this.label4Present = label4Present ?? true,
        this.label5 = label5 ?? '',
        this.label5Present = label5Present ?? false;

  final String label1;
  final String label2;
  final bool label2Present;
  final String label3;
  final bool label3Present;
  final String label4;
  final bool label4Present;
  final String label5;
  final bool label5Present;

  @override
  State<TabGroupWidget> createState() => _TabGroupWidgetState();
}

class _TabGroupWidgetState extends State<TabGroupWidget> {
  late TabGroupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabGroupModel());
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
        borderRadius: BorderRadius.circular(12.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: wrapWithModel(
                model: _model.tabItemModel1,
                updateCallback: () => safeSetState(() {}),
                child: TabItemWidget(
                  label: valueOrDefault<String>(
                    widget.label1,
                    'Все',
                  ),
                  selected: true,
                ),
              ),
            ),
            if (valueOrDefault<bool>(
              widget.label2Present,
              true,
            ))
              Expanded(
                flex: 1,
                child: wrapWithModel(
                  model: _model.tabItemModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: TabItemWidget(
                    label: valueOrDefault<String>(
                      widget.label2,
                      'Овощи',
                    ),
                    selected: false,
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
              widget.label3Present,
              true,
            ))
              Expanded(
                flex: 1,
                child: wrapWithModel(
                  model: _model.tabItemModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: TabItemWidget(
                    label: valueOrDefault<String>(
                      widget.label3,
                      'Мясо',
                    ),
                    selected: false,
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
              widget.label4Present,
              true,
            ))
              Expanded(
                flex: 1,
                child: wrapWithModel(
                  model: _model.tabItemModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: TabItemWidget(
                    label: valueOrDefault<String>(
                      widget.label4,
                      'Бакалея',
                    ),
                    selected: false,
                  ),
                ),
              ),
            if (valueOrDefault<bool>(
              widget.label5Present,
              false,
            ))
              Expanded(
                flex: 1,
                child: wrapWithModel(
                  model: _model.tabItemModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: TabItemWidget(
                    label: widget.label5,
                    selected: false,
                  ),
                ),
              ),
          ].divide(SizedBox(width: 0.0)),
        ),
      ),
    );
  }
}
