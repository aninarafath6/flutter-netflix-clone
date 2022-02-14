import 'package:flutter/material.dart';
import 'package:netflix_clone/core/images/app_images.dart';
import 'package:netflix_clone/presentation/screen/pages/downloads_page/widgets/downloads_banner_image.dart';
import 'package:netflix_clone/utils/dimension.dart';

class DownloadsBannerWidget extends StatelessWidget {
  const DownloadsBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: context.getWidth(65),
            height: context.getWidth(65),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              shape: BoxShape.circle,
            ),
          ),
        ),
        BannerImage(
          imageURL: AppImages.bannerImageURLS[1],
          angle: 14,
          xPos: 90,
        ),
        BannerImage(
          imageURL: AppImages.bannerImageURLS[2],
          angle: -14,
          xPos: -90,
        ),
        BannerImage(
          imageURL: AppImages.bannerImageURLS[0],
          scale: 1,
          yPos: 0,
        ),
      ],
    );
  }
}
