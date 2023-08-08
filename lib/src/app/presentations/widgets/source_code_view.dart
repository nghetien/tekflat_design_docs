import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';
import 'package:flutter_highlight/themes/atom-one-light.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class SourceCodeViewWidget extends StatefulWidget {
  const SourceCodeViewWidget({
    Key? key,
    required this.sourceCode,
    this.heightView = 500,
  }) : super(key: key);

  final String sourceCode;
  final double heightView;

  @override
  State<SourceCodeViewWidget> createState() => _SourceCodeViewWidgetState();
}

class _SourceCodeViewWidgetState extends State<SourceCodeViewWidget> {
  final ScrollController _verticalScrollController = ScrollController();

  @override
  Widget build(BuildContext context) => TekVerticalScroll(
        scrollController: _verticalScrollController,
        builder: (context, wrapperVerticalContent, scrollVerticalWidget) {
          return Stack(
            children: [
              Container(
                height: widget.heightView,
                width: double.infinity,
                color: ThemeState.to.isDarkMode ? const Color(0xFF282c34) : const Color(0xFFfafafa),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: wrapperVerticalContent(
                        SingleChildScrollView(
                          controller: _verticalScrollController,
                          child: HighlightView(
                            widget.sourceCode,
                            language: 'dart',
                            theme: ThemeState.to.isDarkMode ? atomOneDarkTheme : atomOneLightTheme,
                            padding: EdgeInsets.all(TekSpacings().mainSpacing),
                            textStyle: TekTextStyles.body.copyWith(
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              fontFamily: AppFontsStyle.spaceMonoFont,
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (scrollVerticalWidget != null) scrollVerticalWidget,
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: TekSpacings().mainSpacing,
                child: Container(
                  padding: EdgeInsets.all(TekSpacings().p4),
                  child: TekButtonGD(
                    type: TekButtonGDType.text,
                    onPressed: () {},
                    text: S.current.copy,
                    textFontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          );
        },
      );
}
