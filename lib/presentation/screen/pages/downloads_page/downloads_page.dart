import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';
import 'package:remixicon/remixicon.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({Key? key}) : super(key: key);

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
          Container(),
        ],
      ),
    );
  }
}

class SubTitleRow extends StatelessWidget {
  const SubTitleRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Remix.settings_3_fill,
          color: Colors.white,
          size: AppSizes.titleFontSize - 3,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          'Smart Downloads',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
