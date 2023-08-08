import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

typedef GenBreadcrumbsModel = List<BreadcrumbsWidgetModel> Function();

typedef GenBreadcrumbs = List<Widget> Function();

class BreadcrumbsWidgetModel {
  final String title;
  final VoidCallback? onPress;
  final bool isLink;

  BreadcrumbsWidgetModel({
    required this.title,
    this.onPress,
    this.isLink = true,
  });
}

class BreadcrumbsWidgetController extends GetxController {
  static BreadcrumbsWidgetController get to => Get.put(BreadcrumbsWidgetController());

  final Rx<Map<AppRoutes, GenBreadcrumbsModel?>> _breadcrumbs =
      Rx<Map<AppRoutes, GenBreadcrumbsModel?>>({});

  GenBreadcrumbsModel? getCurrentBreadcrumbs(AppRoutes route) => _breadcrumbs.value[route];

  void setGenBreadcrumbs(AppRoutes route, GenBreadcrumbsModel? genBreadcrumbs) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _breadcrumbs.value[route] = genBreadcrumbs;
      _breadcrumbs.refresh();
    });
  }

  void updateBreadcrumbs(AppRoutes route, GenBreadcrumbsModel? genBreadcrumbs) =>
      setGenBreadcrumbs(route, genBreadcrumbs);
}

class BreadcrumbsWidget extends StatelessWidget {
  const BreadcrumbsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final GenBreadcrumbsModel? genBreadcrumbs = BreadcrumbsWidgetController.to
            .getCurrentBreadcrumbs(AppRouter.to.currentRouteData.route);
        if (genBreadcrumbs == null) {
          return const SizedBox.shrink();
        }
        final List<Widget> listBreadcrumbs = genBreadcrumbs().map(
          (e) {
            if (e.isLink) {
              return TekButtonGD(
                type: TekButtonGDType.text,
                onPressed: () => e.onPress?.call(),
                textColor: TekColors().primary,
                text: e.title,
                textFontWeight: FontWeight.w500,
              );
            }
            return Text(
              e.title,
              style: TekTextStyles.body.copyWith(
                color: TekColors().primary,
              ),
            );
          },
        ).toList();
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: TekSpacings().mainSpacing),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var i = 0; i < listBreadcrumbs.length; i++)
                Row(
                  children: [
                    listBreadcrumbs[i],
                    if (i < listBreadcrumbs.length - 1)
                      Icon(
                        Icons.arrow_right_rounded,
                        color: TekColors().primary,
                      ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
}
