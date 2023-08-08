import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';

class HomeContentWidget extends StatelessWidget {
  const HomeContentWidget({Key? key}) : super(key: key);

  List<Map<String, String>> _eventList() => [
        {
          'title': S.current.eventHomePage1,
          'description': S.current.eventDescriptionHomePage1,
          'date': DateTime.now().dateStr,
        },
        {
          'title': S.current.eventHomePage2,
          'description': S.current.eventDescriptionHomePage2,
          'date': DateTime.now().dateStr,
        },
        {
          'title': S.current.eventHomePage3,
          'description': S.current.eventDescriptionHomePage3,
          'date': DateTime.now().dateStr,
        },
      ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (layoutContext, __) => Column(
        children: <Widget>[
          _getStartedWidget(layoutContext),
          TekVSpace.p32,
          TekVSpace.mainSpace,
          _eventsWidget(),
          TekVSpace.p18,
        ],
      ),
    );
  }

  Widget _getStartedWidget(BuildContext context) => Column(
        children: <Widget>[
          TekResponsiveConfig().screenDevice.isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Teko Flat Design',
                      style: TekTextStyles.display.copyWith(
                        fontSize: TekFontSizes().s48,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                        wordSpacing: 5,
                      ),
                    ),
                    Text(
                      'v1.0.0',
                      style: TekTextStyles.display.copyWith(
                        fontSize: TekFontSizes().s48,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                        wordSpacing: 5,
                      ),
                    ),
                  ],
                )
              : Text(
                  'Teko Flat Design v1.0.0',
                  style: TekTextStyles.display.copyWith(
                    fontSize: TekFontSizes().s48,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                    wordSpacing: 5,
                  ),
                ),
          TekVSpace.p8,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: TekSpacings().mainSpacing),
            child: Text(
              S.current.titleHomePage,
              style: TekTextStyles.titleMedium.copyWith(
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          TekVSpace.p32,
          TekVSpace.p8,
          TekButton(
            width: 150,
            type: TekButtonType.primary,
            size: TekButtonSize.large,
            text: S.current.getStarted,
            fontSize: TekTextStyles.titleMedium.fontSize,
            onPressed: () => context.goNamed(AppRoutes.overview.name),
          ),
        ],
      );

  Widget _eventWidget({
    String? title,
    String? description,
    String? date,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? '',
          style: TekTextStyles.titleMedium.copyWith(
            fontWeight: FontWeight.w600,
          ),
          maxLines: 2,
        ),
        TekVSpace.p8,
        Text(
          description ?? '',
          style: TekTextStyles.body,
          maxLines: 2,
        ),
        TekVSpace.p32,
        Text(
          date ?? '',
          style: TekTextStyles.body,
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _event1Widget() {
    return _eventWidget(
      title: _eventList()[0]['title'],
      description: _eventList()[0]['description'],
      date: _eventList()[0]['date'],
    );
  }

  Widget _event2Widget() {
    return _eventWidget(
      title: _eventList()[1]['title'],
      description: _eventList()[1]['description'],
      date: _eventList()[1]['date'],
    );
  }

  Widget _event3Widget() {
    return _eventWidget(
      title: _eventList()[2]['title'],
      description: _eventList()[2]['description'],
      date: _eventList()[2]['date'],
    );
  }

  Widget _eventsWidget() {
    if (!TekResponsiveConfig().screenDevice.isDesktop) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: TekSpacings().p32),
        child: Column(
          children: <Widget>[
            TekCard(
              border: Border.all(
                color: TekColors.greyOpacity04,
                width: TekBorders.thin,
              ),
              child: SizedBox(
                width: double.infinity,
                child: _event1Widget(),
              ),
            ),
            TekVSpace.p32,
            TekCard(
              border: Border.all(
                color: TekColors.greyOpacity04,
                width: TekBorders.thin,
              ),
              child: SizedBox(
                width: double.infinity,
                child: _event2Widget(),
              ),
            ),
            TekVSpace.p32,
            TekCard(
              border: Border.all(
                color: TekColors.greyOpacity04,
                width: TekBorders.thin,
              ),
              child: SizedBox(
                width: double.infinity,
                child: _event3Widget(),
              ),
            ),
          ],
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TekCard(
          border: Border.all(
            color: TekColors.greyOpacity04,
            width: TekBorders.thin,
          ),
          child: SizedBox(
            width: 300,
            height: 160,
            child: _event1Widget(),
          ),
        ),
        TekHSpace.p32,
        TekCard(
          border: Border.all(
            color: TekColors.greyOpacity04,
            width: TekBorders.thin,
          ),
          child: SizedBox(
            width: 300,
            height: 160,
            child: _event2Widget(),
          ),
        ),
        TekHSpace.p32,
        TekCard(
          border: Border.all(
            color: TekColors.greyOpacity04,
            width: TekBorders.thin,
          ),
          child: SizedBox(
            width: 300,
            height: 160,
            child: _event3Widget(),
          ),
        ),
      ],
    );
  }
}
