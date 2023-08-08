import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class LineDashAPIsWidget extends StatelessWidget {
  const LineDashAPIsWidget({super.key});

  List<APITableModel> _getDataSourceLineDash() => [
        APITableModel(
          id: 1,
          property: 'height',
          description: S.current.lineDashAPIDescription1,
          type: 'double',
          defaultValue: 'TekBorders.thin = 1',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 2,
          property: 'color',
          description: S.current.lineDashAPIDescription2,
          type: 'Color',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 3,
          property: 'dashWidth',
          description: S.current.lineDashAPIDescription3,
          type: 'double',
          defaultValue: '5',
          version: AppMode().appMode.version,
        ),
      ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          const DocsTitleItemWidget(title: 'Line Dash'),
          TekVSpace.p8,
          APITableWidget(
            dataSources: _getDataSourceLineDash(),
          ),
        ],
      );
}
