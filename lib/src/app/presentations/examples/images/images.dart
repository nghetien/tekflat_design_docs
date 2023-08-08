import 'package:tekflat_design/tekflat_design.dart';
import 'package:tekflat_design_docs/src/core/core.dart';
import 'package:flutter/material.dart';

class ImagesExampleWidget extends StatelessWidget {
  const ImagesExampleWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Asset Image'),
          TekVSpace.mainSpace,
          Row(
            children: <Widget>[
              TekAssetImage(
                path: AppAssetImages.randomAvatar,
                width: 100,
                height: 100,
              ),
              TekHSpace.mainSpace,
              TekAssetImage(
                path: AppAssetImages.randomAvatar,
                width: 100,
                height: 100,
                shape: BoxShape.circle,
              ),
            ],
          ),
          TekVSpace.mainSpace,
          const Text('Network Image'),
          TekVSpace.mainSpace,
          Row(
            children: <Widget>[
              const TekNetworkImage(
                path: AppAssetImages.networkAvatarMe,
                width: 100,
                height: 100,
              ),
              TekHSpace.mainSpace,
              const TekNetworkImage(
                path: AppAssetImages.networkAvatarMe,
                width: 100,
                height: 100,
                shape: BoxShape.circle,
              ),
            ],
          ),
        ],
      );
}
