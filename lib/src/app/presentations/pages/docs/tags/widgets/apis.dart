import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/runner/runner.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class TagsAPIsWidget extends StatelessWidget {
  const TagsAPIsWidget({super.key});

  List<APITableModel> _getDataSourceTags() => [
        APITableModel(
          id: 1,
          property: 'value',
          description: S.current.tagsAPIDescription1,
          type: 'String',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 2,
          property: 'height',
          description: S.current.tagsAPIDescription2,
          type: 'double',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 3,
          property: 'padding',
          description: S.current.tagsAPIDescription3,
          type: 'EdgeInsetsGeometry',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 4,
          property: 'borderRadius',
          description: S.current.tagsAPIDescription4,
          type: 'BorderRadiusGeometry',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 5,
          property: 'textStyle',
          description: S.current.tagsAPIDescription5,
          type: 'TextStyle',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 6,
          property: 'color',
          description: S.current.tagsAPIDescription6,
          type: 'Color',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
      ];

  List<APITableModel> _getDataSourceDynamicTags() => [
        APITableModel(
          id: 1,
          property: 'textContent',
          description: S.current.dynamicTagsAPIDescription1,
          type: 'String',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 2,
          property: 'content',
          description: S.current.dynamicTagsAPIDescription2,
          type: 'Widget',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 3,
          property: 'whenClose',
          description: S.current.dynamicTagsAPIDescription3,
          type: 'VoidCallback',
          defaultValue: 'required',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 4,
          property: 'height',
          description: S.current.dynamicTagsAPIDescription4,
          type: 'double',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 5,
          property: 'width',
          description: S.current.dynamicTagsAPIDescription5,
          type: 'double',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 6,
          property: 'backgroundColor',
          description: S.current.dynamicTagsAPIDescription6,
          type: 'Color',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 7,
          property: 'padding',
          description: S.current.dynamicTagsAPIDescription7,
          type: 'EdgeInsets',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 8,
          property: 'borderRadius',
          description: S.current.dynamicTagsAPIDescription8,
          type: 'BorderRadius',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 9,
          property: 'icon',
          description: S.current.dynamicTagsAPIDescription9,
          type: 'Widget',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 10,
          property: 'iconSize',
          description: S.current.dynamicTagsAPIDescription10,
          type: 'double',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 11,
          property: 'iconColor',
          description: S.current.dynamicTagsAPIDescription11,
          type: 'Color',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 12,
          property: 'backgroundColorIcon',
          description: S.current.dynamicTagsAPIDescription12,
          type: 'Color',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
        APITableModel(
          id: 13,
          property: 'iconPadding',
          description: S.current.dynamicTagsAPIDescription13,
          type: 'EdgeInsets',
          defaultValue: 'null',
          version: AppMode().appMode.version,
        ),
      ];

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekVSpace.p4,
          const DocsTitleItemWidget(title: 'Tags'),
          TekVSpace.p8,
          APITableWidget(
            dataSources: _getDataSourceTags(),
          ),
          TekVSpace.p18,
          const DocsTitleItemWidget(title: 'Dynamic Tags'),
          TekVSpace.p8,
          APITableWidget(
            widthOfPropertyColumn: 200,
            dataSources: _getDataSourceDynamicTags(),
          ),
        ],
      );
}
