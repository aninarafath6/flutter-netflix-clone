import 'package:flutter/material.dart';
import 'package:netflix_clone/core/images/app_images.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:netflix_clone/core/theme/app_theme.dart';

class CAppBar extends StatelessWidget {
  const CAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTheme.titleTextTheme,
      ),
      actions: [
        IconButton(
          onPressed: () {
            debugPrint('cast');
          },
          splashRadius: AppSizes.defaultSplashRadius,
          icon: const Icon(
            Icons.cast,
            size: AppSizes.titleIconSize,
          ),
        ),
        AppSizes.smHSpacer,
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              AppImages.userAvatar,
              height: AppSizes.titleIconSize,
              width: AppSizes.titleIconSize,
            ),
          ),
        ),
      ],
      centerTitle: false,
    );
  }
}
