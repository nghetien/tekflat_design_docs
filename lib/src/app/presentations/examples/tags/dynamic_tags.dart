import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class DynamicTagsExampleWidget extends StatefulWidget {
  const DynamicTagsExampleWidget({super.key});

  @override
  State<DynamicTagsExampleWidget> createState() => _DynamicTagsExampleWidgetState();
}

class _DynamicTagsExampleWidgetState extends State<DynamicTagsExampleWidget> {
  int _counter = 3;

  final List<String> _tags = ['Tag-1', 'Tag-2', 'Tag-3'];

  void _addTag(String value) {
    _tags.add(value);
    setState(() {});
  }

  void _removeTag(String value) {
    _tags.remove(value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TekButton(
            onPressed: () => _addTag('Tag-${++_counter}'),
            text: 'Add tag',
            iconData: Icons.add_rounded,
            type: TekButtonType.success,
            
          ),
          TekVSpace.mainSpace,
          TekCard(
            backgroundColor: context.theme.colorScheme.onBackground,
            child: Wrap(
              runSpacing: TekSpacings().p8,
              spacing: TekSpacings().p8,
              children: _tags
                  .map(
                    (e) => TekDynamicTag(
                      backgroundColor: TekColors.greyOpacity01,
                      whenClose: () => _removeTag(e),
                      textContent: e,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      );
}
