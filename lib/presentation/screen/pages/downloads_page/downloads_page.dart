import 'package:flutter/material.dart';
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
        centerTitle: false,
      ),
      body: const Center(
        child: Text('downloads page'),
      ),
    );
  }
}
