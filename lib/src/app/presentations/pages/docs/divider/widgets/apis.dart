import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class DividerAPIsWidget extends StatelessWidget {
  const DividerAPIsWidget({super.key});

  List<APITableModel> _getDataSourceDivider() => [
        APITableModel(
          id: 1,
          property: 'height',
          description: S.current.dividerAPIDescription1,
          type: 'double',
          defaultValue: '2',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 2,
          property: 'border',
          description: S.current.dividerAPIDescription2,
          type: 'BoxBorder',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 3,
          property: 'borderRadius',
          description: S.current.dividerAPIDescription3,
          type: 'BorderRadius',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 4,
          property: 'color',
          description: S.current.dividerAPIDescription4,
          type: 'Color',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
      ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          const DocsTitleItemWidget(title: 'Basic Divider'),
          TekVSpace.p8,
          APITableWidget(
            dataSources: _getDataSourceDivider(),
          ),
        ],
      );
}
