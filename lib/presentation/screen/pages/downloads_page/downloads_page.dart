import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:netflix_clone/core/strings/downloads_page/downloads_strings.dart';
import 'package:netflix_clone/presentation/screen/pages/downloads_page/widgets/downloads_banner_widget.dart';
import 'package:netflix_clone/presentation/screen/pages/downloads_page/widgets/sub_title_row_widget.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(AppSizes.toolbarHeight),
        child: CAppBar(
          title: DownloadsStrings.downloadsTitle,
        ),
      ),
      body: ListView(
        children: const [
          SubTitleRow(),
          SizedBox(height: 50),
          Text(
            DownloadsStrings.idu,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppSizes.titleFontSize - 4,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            DownloadsStrings.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          DownloadsBannerWidget(),
        ],
      ),
    );
  }
}
