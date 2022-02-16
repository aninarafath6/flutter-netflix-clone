import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/app_colors.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:netflix_clone/core/strings/downloads_page/downloads_strings.dart';
import 'package:netflix_clone/presentation/screen/pages/downloads_page/widgets/downloads_banner_widget.dart';
import 'package:netflix_clone/presentation/screen/pages/downloads_page/widgets/sub_title_row_widget.dart';

import 'widgets/action_button_widget.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          SubTitleRow(),
          AppSizes.lgVSpacer,
          Text(
            DownloadsStrings.idu,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppSizes.titleFontSize - 4,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppSizes.smVSpacer,
          Text(
            DownloadsStrings.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          AppSizes.smVSpacer,
          DownloadsBannerWidget(),
          AppSizes.lgVSpacer,
          ActionButtons(
            label: 'Set Up',
            color: AppColors.buttonColor,
          ),
          AppSizes.smVSpacer,
          ActionButtons(
            label: 'See What You Can Download',
            isSmall: true,
          )
        ],
      ),
    );
  }
}
