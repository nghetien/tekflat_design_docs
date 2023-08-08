import 'package:tekflat_design_docs/src/core/core.dart';

class OverViewItemModel {
  final String name;
  final AppRoutes route;
  final String assetImageLight;
  final String assetImageDark;

  const OverViewItemModel({
    required this.name,
    required this.route,
    required this.assetImageLight,
    required this.assetImageDark,
  });
}
