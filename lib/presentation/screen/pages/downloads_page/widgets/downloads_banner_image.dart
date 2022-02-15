import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/app_shadows.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:netflix_clone/utils/dimension.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    Key? key,
    required this.imageURL,
    this.angle = 0,
    this.xPos = 0,
    this.scale = .87,
    this.yPos = -16,
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
              borderRadius: BorderRadius.circular(AppSizes.borderRadius),
              boxShadow: const [
                AppShadows.downloadsBannerShadow,
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.borderRadius),
              child: Image.network(
                imageURL,
                height: context.getHeight(24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
