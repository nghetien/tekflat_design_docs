import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class CardsAPIsWidget extends StatelessWidget {
  const CardsAPIsWidget({super.key});

  List<APITableModel> _getDataSourceCards() => [
    APITableModel(
      id: 1,
      property: 'child',
      description: S.current.cardsAPIDescription1,
      type: 'Widget',
      defaultValue: 'required',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 2,
      property: 'height',
      description: S.current.cardsAPIDescription2,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 3,
      property: 'width',
      description: S.current.cardsAPIDescription3,
      type: 'double',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 4,
      property: 'margin',
      description: S.current.cardsAPIDescription4,
      type: 'EdgeInsets',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 5,
      property: 'padding',
      description: S.current.cardsAPIDescription5,
      type: 'EdgeInsets',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 6,
      property: 'backgroundColor',
      description: S.current.cardsAPIDescription6,
      type: 'Color',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 7,
      property: 'borderRadius',
      description: S.current.cardsAPIDescription7,
      type: 'BorderRadius',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
    APITableModel(
      id: 8,
      property: 'border',
      description: S.current.cardsAPIDescription8,
      type: 'BoxBorder',
      defaultValue: 'null',
      version: AppMode().appMode.version,
    ),
  ];

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      TekVSpace.p4,
      const DocsTitleItemWidget(title: 'Basic Card'),
      TekVSpace.p8,
      APITableWidget(
        widthOfPropertyColumn: 160,
        dataSources: _getDataSourceCards(),
      ),
    ],
  );
}
