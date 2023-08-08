import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({
    Key? key,
    required this.menuIsExpanded,
  }) : super(key: key);

  final bool menuIsExpanded;

  double _getHeightOfHeader(BuildContext context) {
    return TekPlatform.isWeb
        ? 70 + MediaQuery.of(context).padding.top
        : TekPlatform.isAndroid
        ? 80
        : kToolbarHeight * 2;
  }

  @override
  Widget build(BuildContext context) {
    if (TekPlatform.isWeb) return _web(context);
    if (TekPlatform.isAndroid) return _android(context);
    return _ios(context);
  }

  Widget _logo(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: _getHeightOfHeader(context),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: TekColors.greyOpacity04,
            width: TekBorders.thin,
          ),
        ),
      ),
      child: TekButtonGD(
        type: TekButtonGDType.customize,
        onPressed: () => context.goNamed(AppRoutes.home.name),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const TekAssetImage(
              width: 50,
              height: 50,
              path: AppAssetImages.logo,
              borderWidth: 0,
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.zero,
              boxFit: BoxFit.fill,
            ),
            Text(
              menuIsExpanded ? 'TekFlat' : '',
              style: TekTextStyles.headline.copyWith(
                fontWeight: FontWeight.bold,
                color: TekColors().primary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _web(BuildContext context) => _logo(context);

  Widget _android(BuildContext context) => _logo(context);

  Widget _ios(BuildContext context) => _logo(context);
}
