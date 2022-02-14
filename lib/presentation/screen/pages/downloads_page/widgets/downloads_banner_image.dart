import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/dimension.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    Key? key,
    required this.imageURL,
    this.angle = 0,
    this.xPos = 0,
    this.scale = .88,
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
