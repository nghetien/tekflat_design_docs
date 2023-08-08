import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class BadgesAPIsWidget extends StatelessWidget {
  const BadgesAPIsWidget({super.key});

  List<APITableModel> _getDataSourceBadges() => [
    APITableModel(
      id: 1,
      property: 'child',
      description: S.current.badgesAPIDescription1,
      type: 'Widget',
      defaultValue: 'required',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 2,
      property: 'count',
      description: S.current.badgesAPIDescription2,
      type: 'int',
      defaultValue: '0',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 3,
      property: 'color',
      description: S.current.badgesAPIDescription3,
      type: 'Color',
      defaultValue: 'TekColors.red',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 4,
      property: 'top',
      description: S.current.badgesAPIDescription4,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 5,
      property: 'right',
      description: S.current.badgesAPIDescription5,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
  ];

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TekVSpace.p4,
      const DocsTitleItemWidget(title: 'Basic Badge'),
      TekVSpace.p8,
      APITableWidget(
        dataSources: _getDataSourceBadges(),
      ),
    ],
  );
}
