import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class SpacesAPIsWidget extends StatelessWidget {
  const SpacesAPIsWidget({super.key});

  List<APITableModel> _getDataSourceVerticalSpaces() => [
        APITableModel(
          id: 1,
          property: 'size',
          description: S.current.spacesVerticalAPIDescription1,
          type: 'double',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
      ];

  List<APITableModel> _getDataSourceHorizontalSpaces() => [
        APITableModel(
          id: 1,
          property: 'size',
          description: S.current.spacesHorizontalAPIDescription1,
          type: 'double',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
      ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          const DocsTitleItemWidget(title: 'Vertical Spaces'),
          TekVSpace.p8,
          APITableWidget(
            dataSources: _getDataSourceVerticalSpaces(),
          ),
          TekVSpace.p18,
          const DocsTitleItemWidget(title: 'Horizontal Spaces'),
          TekVSpace.p8,
          APITableWidget(
            dataSources: _getDataSourceHorizontalSpaces(),
          ),
        ],
      );
}
