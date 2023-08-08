import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class TitlesAPIsWidget extends StatelessWidget {
  const TitlesAPIsWidget({super.key});

  List<APITableModel> _getDataSourceTitle() => [
        APITableModel(
          id: 2,
          property: 'text',
          description: S.current.titleAPIDescription2,
          type: 'String',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 3,
          property: 'titleType',
          description: S.current.titleAPIDescription3,
          type: 'TekButtonType',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 4,
          property: 'fontWeight',
          description: S.current.titleAPIDescription4,
          type: 'FontWeight',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 5,
          property: 'fontSize',
          description: S.current.titleAPIDescription5,
          type: 'double',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 6,
          property: 'color',
          description: S.current.titleAPIDescription6,
          type: 'Color',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 7,
          property: 'height',
          description: S.current.titleAPIDescription7,
          type: 'double',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 8,
          property: 'strutStyle',
          description: S.current.titleAPIDescription8,
          type: 'StrutStyle',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 9,
          property: 'textAlign',
          description: S.current.titleAPIDescription9,
          type: 'TextAlign',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 10,
          property: 'textDirection',
          description: S.current.titleAPIDescription10,
          type: 'TextDirection',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 11,
          property: 'locale',
          description: S.current.titleAPIDescription11,
          type: 'Locale',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 12,
          property: 'softWrap',
          description: S.current.titleAPIDescription12,
          type: 'bool',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 13,
          property: 'overflow',
          description: S.current.titleAPIDescription13,
          type: 'TextOverflow',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 14,
          property: 'textScaleFactor',
          description: S.current.titleAPIDescription14,
          type: 'double',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 15,
          property: 'maxLines',
          description: S.current.titleAPIDescription15,
          type: 'int',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 16,
          property: 'semanticsLabel',
          description: S.current.titleAPIDescription16,
          type: 'String',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 17,
          property: 'textWidthBasis',
          description: S.current.titleAPIDescription17,
          type: 'TextWidthBasis',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 18,
          property: 'textHeightBehavior',
          description: S.current.titleAPIDescription18,
          type: 'TextHeightBehavior',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 19,
          property: 'selectionColor',
          description: S.current.titleAPIDescription19,
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
          DocsTitleItemWidget(title: S.current.title),
          TekVSpace.p8,
          APITableWidget(
            widthOfPropertyColumn: 160,
            dataSources: _getDataSourceTitle(),
          ),
        ],
      );
}
