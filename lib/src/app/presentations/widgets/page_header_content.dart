import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/app/app.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class PageContentContainerWidget extends StatefulWidget {
  const PageContentContainerWidget({
    Key? key,
    required this.title,
    this.description,
    this.child,
    this.ableToFeedback = false,
  }) : super(key: key);

  final String title;
  final String? description;
  final Widget? child;
  final bool ableToFeedback;

  @override
  State<PageContentContainerWidget> createState() => _PageContentContainerWidgetState();
}

class _PageContentContainerWidgetState extends State<PageContentContainerWidget> {
  GlobalKey<FormBuilderState>? _formKey;

  @override
  void initState() {
    super.initState();
    if (widget.ableToFeedback == true) {
      _formKey = GlobalKey<FormBuilderState>();
    }
  }

  void _handleFeedback() {
    TekDialogs.customizeDialog(
      context,
      title: S.current.feedback,
      width: max(600, context.widthScreen * 0.5),
      content: _formFeedback(),
      onOkPressed: () async {
        return true;
      },
      customizeOkText: S.current.send,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SelectionArea(
              child: Text(
                widget.title,
                style: TekTextStyles.headline.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (widget.ableToFeedback)
              TekButton(
                text: S.current.feedback,
                type: TekButtonType.outline,
                iconData: FontAwesomeIcons.commentMedical,
                iconIsRight: true,
                onPressed: _handleFeedback,
              )
          ],
        ),
        TekVSpace.p4,
        widget.description != null
            ? SelectionArea(
                child: Text(
                  widget.description ?? '',
                  style: TekTextStyles.body.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 10,
                ),
              )
            : widget.child ?? const SizedBox.shrink(),
      ],
    );
  }

  Widget _formFeedback() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FormItemTitleWidget(
            title: S.current.title,
            child: TekInput(
              name: 'title',
              hintText: S.current.title,
            ),
          ),
          TekVSpace.mainSpace,
          FormItemTitleWidget(
            title: S.current.description,
            child: TekInput(
              name: 'description',
              hintText: S.current.description,
              size: TekInputSize.areaLarge,
              maxLines: 20,
            ),
          ),
        ],
      ),
    );
  }
}
