import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TekMeasureSizeAPIsWidget extends StatelessWidget {
  const TekMeasureSizeAPIsWidget({super.key});

  List<APITableModel> _getDataSourceTekMeasureSize() => [
        APITableModel(
          id: 1,
          property: 'onChange',
          description: S.current.measureSizeAPIDescription1,
          type: 'OnWidgetSizeChange',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 2,
          property: 'widget',
          description: S.current.measureSizeAPIDescription2,
          type: 'Widget',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
      ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          const DocsTitleItemWidget(title: 'Basic Measure Size'),
          TekVSpace.p8,
          APITableWidget(
            dataSources: _getDataSourceTekMeasureSize(),
          ),
        ],
      );
}
