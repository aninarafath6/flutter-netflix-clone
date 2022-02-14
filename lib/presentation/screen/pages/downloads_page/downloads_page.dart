import 'package:flutter/material.dart';
import 'package:netflix_clone/core/images/app_images.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:netflix_clone/core/theme/app_theme.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Downloads',
          style: AppTheme.titleTextTheme,
        ),
        actions: [
          const Icon(
            Icons.cast,
            size: AppSizes.titleIconSize,
          ),
          AppSizes.spaceWidget,
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AppImages.userAvatar,
              height: AppSizes.titleIconSize,
              width: AppSizes.titleIconSize,
            ),
          ),
        ],
        centerTitle: false,
      ),
      body: const Center(
        child: Text('downloads page'),
      ),
    );
  }
}
