import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class ResponsiveAPIsWidget extends StatelessWidget {
  const ResponsiveAPIsWidget({super.key});

  List<APITableModel> _getDataSourceResponsive() => [
    APITableModel(
      id: 1,
      property: 'appResBuilder',
      description: S.current.responsiveAPIDescription1,
      type: '_',
      defaultValue: '_',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 2,
      property: 'resBuilder',
      description: S.current.responsiveAPIDescription2,
      type: '_',
      defaultValue: '_',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 3,
      property: 'resBuilderWithOutLB',
      description: S.current.responsiveAPIDescription3,
      type: '_',
      defaultValue: '_',
      version: AppMode().appMode.version,
    ),
  ];

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
          TekVSpace.p4,
          const DocsTitleItemWidget(title: 'Responsive'),
          TekVSpace.p8,
          APITableWidget(dataSources: _getDataSourceResponsive()),
        ],
  );
}
