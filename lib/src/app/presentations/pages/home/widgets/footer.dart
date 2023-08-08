import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class HomeFooterWidget extends StatelessWidget {
  const HomeFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, __) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.theme.colorScheme.onBackground,
          ),
          child: Column(
            children: [
              TekVSpace.p32,
              _contentWidget(context),
              TekVSpace.p32,
            ],
          ),
        );
      },
    );
  }

  Widget _columnWidget(
    BuildContext context, {
    required String title,
    List<Map<String, String>> items = const [],
        CrossAxisAlignment? crossAxisAlignment,
  }) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        TekTypography(
          text: title,
          type: TekTypographyType.level4,
          fontWeight: FontWeight.bold,
        ),
        TekVSpace.p8,
        ...items.map(
          (e) => Padding(
            padding: EdgeInsets.only(top: TekSpacings().p8),
            child: TekLink(
              text: e['title']!,
              size: TekLinkSize.medium,
              onPressed: () {
                htmlWindowOpen(
                  e['link']!,
                  e['title']!,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _contentWidget(BuildContext context) {
    if (TekResponsiveConfig().screenDevice.isMobile) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 100.scaleSpacing,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _columnWidget(
                  context,
                  title: S.current.resources,
                  items: [
                    {
                      'title': 'Pub.dev',
                      'link': 'https://pub.dev/',
                    },
                    {
                      'title': 'Flutter.dev',
                      'link': 'https://flutter.dev/',
                    },
                    {
                      'title': 'Dart.dev',
                      'link': 'https://dart.dev/',
                    },
                  ],
                ),
                _columnWidget(
                  context,
                  title: S.current.community,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  items: [
                    {
                      'title': 'Linkedin',
                      'link': 'https://www.linkedin.com/showcase/flutterdevofficial/',
                    },
                  ],
                ),
              ],
            ),
            TekVSpace.p32,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _columnWidget(
                  context,
                  title: S.current.help,
                  items: [
                    {
                      'title': 'Github',
                      'link': 'https://github.com/nghetien/tekflat_design',
                    },
                    {
                      'title': 'Facebook',
                      'link': 'https://www.facebook.com/profile.php?id=100009782866664',
                    },
                    {
                      'title': 'Linkedin',
                      'link': 'https://www.linkedin.com/in/tien-nghe-801a39193/',
                    },
                  ],
                ),
                _columnWidget(
                  context,
                  title: S.current.moreProducts,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  items: [
                    {
                      'title': 'Jira Teko Flutter',
                      'link': 'https://pub.dev/packages/jira_teko_flutter',
                    },
                    {
                      'title': 'TCP Socket Flutter',
                      'link': 'https://pub.dev/packages/tcp_socket_flutter#tcp-socket-flutter',
                    },
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            TekResponsiveConfig().screenDevice.isTablet ? 80.scaleSpacing : 250.scaleSpacing,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _columnWidget(
            context,
            title: S.current.resources,
            items: [
              {
                'title': 'Pub.dev',
                'link': 'https://pub.dev/',
              },
              {
                'title': 'Flutter.dev',
                'link': 'https://flutter.dev/',
              },
              {
                'title': 'Dart.dev',
                'link': 'https://dart.dev/',
              },
            ],
          ),
          TekVSpace.p32,
          _columnWidget(
            context,
            title: S.current.community,
            items: [
              {
                'title': 'Linkedin',
                'link': 'https://www.linkedin.com/showcase/flutterdevofficial/',
              },
            ],
          ),
          TekVSpace.p32,
          _columnWidget(
            context,
            title: S.current.help,
            items: [
              {
                'title': 'Github',
                'link': 'https://github.com/nghetien/tekflat_design',
              },
              {
                'title': 'Facebook',
                'link': 'https://www.facebook.com/profile.php?id=100009782866664',
              },
              {
                'title': 'Linkedin',
                'link': 'https://www.linkedin.com/in/tien-nghe-801a39193/',
              },
            ],
          ),
          TekVSpace.p32,
          _columnWidget(
            context,
            title: S.current.moreProducts,
            items: [
              {
                'title': 'Jira Teko Flutter',
                'link': 'https://pub.dev/packages/jira_teko_flutter',
              },
              {
                'title': 'TCP Socket Flutter',
                'link': 'https://pub.dev/packages/tcp_socket_flutter#tcp-socket-flutter',
              },
            ],
          ),
        ],
      ),
    );
  }
}
