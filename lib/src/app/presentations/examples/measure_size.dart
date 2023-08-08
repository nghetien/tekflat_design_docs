import 'package:tekflat_design/tekflat_design.dart';
import 'package:flutter/material.dart';

class TekMeasureSizeExampleWidget extends StatefulWidget {
  const TekMeasureSizeExampleWidget({super.key});

  @override
  State<TekMeasureSizeExampleWidget> createState() => _TekMeasureSizeExampleWidgetState();
}

class _TekMeasureSizeExampleWidgetState extends State<TekMeasureSizeExampleWidget> {
  Size _size = Size.zero;

  Size get size => _size;

  void _setHeight(Size size) => setState(() => _size = size);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TekButton(
          size: TekButtonSize.large,
          type: TekButtonType.primary,
          onPressed: () {
            TekLogger.debugLog({
              'height': size.height,
              'width': size.width,
            });
          },
          text: 'Get height',
        ),
        TekVSpace.mainSpace,
        Text('Height: ${size.height}'),
        TekVSpace.mainSpace,
        Text('Width: ${size.width}'),
        TekVSpace.mainSpace,
        TekMeasureSize(
          onChange: _setHeight,
          child: TekCard(
            width: 200,
            height: 100,
            backgroundColor: TekColors.greyOpacity04,
            child: const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
