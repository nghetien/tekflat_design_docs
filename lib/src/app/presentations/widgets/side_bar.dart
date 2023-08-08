import 'package:flutter/material.dart';
import 'package:tekflat_design/tekflat_design.dart';

class SideBarModelItem {
  final String title;
  final List<SideBarModelItem>? children;

  SideBarModelItem({
    required this.title,
    this.children,
  });
}

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<SideBarModelItem> items;

  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        padding: EdgeInsets.only(
          left: TekSpacings().mainSpacing,
        ),
        margin: EdgeInsets.only(
          top: TekSpacings().mainSpacing,
        ),
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: TekColors.greyOpacity02,
              width: TekBorders.thin,
            ),
          ),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            if (items[index].children == null || items[index].children!.isEmpty) {
              return Padding(
                padding: EdgeInsets.only(bottom: TekSpacings().p4),
                child: Text(
                  items[index].title,
                  style: TekTextStyles.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
              );
            }
            return Padding(
              padding: EdgeInsets.only(bottom: TekSpacings().p4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    items[index].title,
                    style: TekTextStyles.titleMedium.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                  ),
                  TekVSpace.p4,
                  ListView.builder(
                    padding: EdgeInsets.only(left: TekSpacings().mainSpacing),
                    shrinkWrap: true,
                    itemCount: items[index].children!.length,
                    itemBuilder: (context, childIndex) {
                      if (items[index].children![childIndex].children == null ||
                          items[index].children![childIndex].children!.isEmpty) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: TekSpacings().p4),
                          child: Text(
                            items[index].children![childIndex].title,
                            style: TekTextStyles.body.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 2,
                          ),
                        );
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            items[index].children![childIndex].title,
                            style: TekTextStyles.body.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 2,
                          ),
                          TekVSpace.p4,
                          ListView.builder(
                            padding: EdgeInsets.only(left: TekSpacings().mainSpacing),
                            shrinkWrap: true,
                            itemCount: items[index].children![childIndex].children!.length,
                            itemBuilder: (context, childChildIndex) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: TekSpacings().p4),
                                child: Text(
                                  items[index]
                                      .children![childIndex]
                                      .children![childChildIndex]
                                      .title,
                                  style: TekTextStyles.body.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                  maxLines: 2,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      );
}
