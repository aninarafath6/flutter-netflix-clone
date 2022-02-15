import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:netflix_clone/core/strings/downloads_page/downloads_strings.dart';
import 'package:netflix_clone/presentation/screen/main_screen/widgets/bottom_nav.dart';
import 'package:netflix_clone/presentation/screen/pages/downloads_page/downloads_page.dart';
import 'package:netflix_clone/presentation/screen/pages/home_page/home_page.dart';
import 'package:netflix_clone/presentation/screen/pages/laughs_page/laughs_page.dart';
import 'package:netflix_clone/presentation/screen/pages/new_and_hot_page/new_and_hot_page.dart';
import 'package:netflix_clone/presentation/screen/pages/search_page/search_page.dart';

import '../../widgets/app_bar_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  final List<Widget> pages = const [
    HomePage(),
    NewAndHotPage(),
    Laughs(),
    SearchPage(),
    DownloadsPage(),
  ];

  final List<String> pageTitles = const [
    'Home',
    'New & Hot',
    'Fast Laughs',
    'Search',
    'Downloads',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(AppSizes.toolbarHeight),
        child: CAppBar(
          title: DownloadsStrings.downloadsTitle,
        ),
      ),
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) => pages[index],
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
