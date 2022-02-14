import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:netflix_clone/presentation/screen/pages/downloads_page/widgets/sub_title_row_widget.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';
import 'package:netflix_clone/utils/dimension.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({Key? key}) : super(key: key);

  static const List<String> imageURLS = [
    'https://www.themoviedb.org/t/p/w1280/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg',
    'https://www.themoviedb.org/t/p/w1280/yc2IfL701hGkNHRgzmF4C6VKO14.jpg',
    'https://www.themoviedb.org/t/p/w1280/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(AppSizes.toolbarHeight),
        child: CAppBar(
          title: 'Downloads',
        ),
      ),
      body: ListView(
        children: [
          const SubTitleRow(),
          const SizedBox(height: 50),
          const Text(
            'Introducing Downloads for You',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppSizes.titleFontSize - 4,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "We'll download a personalized selection of\nmovies and shows for you, so there's\nalways something to watch on your\n device.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          Stack(
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
                imageURL: imageURLS[1],
                angle: 14,
                scale: .88,
                xPos: 90,
                yPos: -16,
              ),
              BannerImage(
                imageURL: imageURLS[2],
                angle: -14,
                scale: .88,
                xPos: -90,
                yPos: -16,
              ),
              BannerImage(
                imageURL: imageURLS[0],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BannerImage extends StatelessWidget {
  const BannerImage({
    Key? key,
    required this.imageURL,
    this.angle = 0,
    this.xPos = 0,
    this.scale = 1,
    this.yPos = 0,
  }) : super(key: key);

  final String imageURL;
  final int angle;
  final double scale;
  final double xPos;
  final double yPos;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Transform.translate(
          offset: Offset(xPos, yPos),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageURL,
                height: context.getHeight(23),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
