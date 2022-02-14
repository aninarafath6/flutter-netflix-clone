import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppSizes.toolbarHeight),
        child: CAppBar(
          title: 'Downloads',
        ),
      ),
      body: Center(
        child: Text('downloads page'),
      ),
    );
  }
}
