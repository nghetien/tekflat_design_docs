import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ErrorImagesExampleWidget extends StatelessWidget {
  const ErrorImagesExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Network Image'),
          TekVSpace.mainSpace,
          Row(
            children: <Widget>[
              TekNetworkImage(
                path: 'aaa',
                width: 100,
                height: 100,
                assetPathWhenError: AppAssetImages.randomAvatar,
              ),
              TekHSpace.mainSpace,
              TekNetworkImage(
                path: 'aaa',
                width: 100,
                height: 100,
                shape: BoxShape.circle,
                assetPathWhenError: AppAssetImages.randomAvatar,
              ),
            ],
          ),
        ],
      );
}
