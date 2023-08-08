import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ToastsAPIsWidget extends StatelessWidget {
  const ToastsAPIsWidget({super.key});

  List<APITableModel> _getDataSourceToasts() => [
    APITableModel(
      id: 1,
      property: 'msg',
      description: S.current.toastAPIDescription1,
      type: 'String',
      defaultValue: 'required',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 2,
      property: 'backgroundColor',
      description: S.current.toastAPIDescription2,
      type: 'Color',
      defaultValue: 'Colors.black',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 3,
      property: 'textColor',
      description: S.current.toastAPIDescription3,
      type: 'Colors',
      defaultValue: 'Colors.white',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 4,
      property: 'gravity',
      description: S.current.toastAPIDescription4,
      type: 'ToastGravity',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 5,
      property: 'toastLength',
      description: S.current.toastAPIDescription5,
      type: 'Toast',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
  ];

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TekVSpace.p4,
      const DocsTitleItemWidget(title: 'Basic Toasts'),
      TekVSpace.p8,
      APITableWidget(
        widthOfPropertyColumn: 160,
        dataSources: _getDataSourceToasts(),
      ),
    ],
  );
}
