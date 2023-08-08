import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class ExampleBlockWidget extends StatefulWidget {
  const ExampleBlockWidget({
    Key? key,
    required this.preview,
    required this.title,
    required this.description,
    required this.pathFileExample,
    this.heightView,
  }) : super(key: key);

  final Widget preview;
  final String title;
  final Widget description;
  final String pathFileExample;
  final double? heightView;

  @override
  State<ExampleBlockWidget> createState() => _ExampleBlockWidgetState();
}

class _ExampleBlockWidgetState extends State<ExampleBlockWidget> {
  String _source = '';
  bool _showCode = false;

  void _setSource(String value) => setState(() => _source = value);

  void _setShowCode(bool value) => setState(() => _showCode = value);

  @override
  void initState() {
    super.initState();
    rootBundle.loadString(widget.pathFileExample).then((value) {
      _setSource(value);
    });
  }

  @override
  void didUpdateWidget(covariant ExampleBlockWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.description != widget.description) setState(() {});
    if (oldWidget.preview != widget.preview) setState(() {});
    if (oldWidget.pathFileExample != widget.pathFileExample) {
      rootBundle.loadString(widget.pathFileExample).then((value) {
        _setSource(value);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TekCard(
      padding: EdgeInsets.zero,
      border: Border.all(
        width: TekBorders.thin,
        color: TekColors.greyOpacity04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(TekSpacings().mainSpacing),
            child: widget.preview,
          ),
          SizedBox(
            height: TekSpacings().mainSpacing * 2,
            child: Stack(
              children: [
                TekDivider(
                  height: TekBorders.thin,
                  color: TekColors.greyOpacity04,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: TekSpacings().mainSpacing),
                    color: context.theme.colorScheme.background,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          widget.title,
                          style: TekTextStyles.body.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TekHSpace.p8,
                        Icon(
                          FontAwesomeIcons.penToSquare,
                          size: 13.scaleFontSize,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SelectionArea(
            child: Padding(
              padding: EdgeInsets.all(TekSpacings().mainSpacing).copyWith(
                top: TekSpacings().p8,
              ),
              child: widget.description,
            ),
          ),
          const TekLineDash(),
          Padding(
            padding: EdgeInsets.all(TekSpacings().p4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TekButton(
                  size: TekButtonSize.small,
                  type: TekButtonType.themeGhost,
                  onPressed: () => _setShowCode(!_showCode),
                  iconData: FontAwesomeIcons.code,
                  text: S.current.showCode,
                  textColor: _showCode
                      ? context.theme.colorScheme.primary
                      : context.theme.textTheme.titleMedium?.color,
                )
              ],
            ),
          ),
          if (_source.isNotEmpty && _showCode)
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: TekBorders.thin,
                    color: TekColors.greyOpacity04,
                  ),
                )
              ),
              child: SourceCodeViewWidget(
                sourceCode: _source,
                heightView: widget.heightView ?? 500,
              ),
            )
        ],
      ),
    );
  }
}
