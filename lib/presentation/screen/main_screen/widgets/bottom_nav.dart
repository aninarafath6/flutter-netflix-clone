import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/app_colors.dart';
import 'package:remixicon/remixicon.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.dark,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: selectedIndex,
      onTap: (int index) => setState(() {
        selectedIndex = index;
      }),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Remix.home_5_line),
          activeIcon: Icon(Remix.home_5_fill),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Remix.movie_2_line),
          activeIcon: Icon(Remix.movie_2_fill),
          label: 'New & Hot',
        ),
        BottomNavigationBarItem(
          icon: Icon(Remix.emotion_laugh_line),
          activeIcon: Icon(Remix.emotion_laugh_fill),
          label: 'Laughs',
        ),
        BottomNavigationBarItem(
          icon: Icon(Remix.search_line),
          activeIcon: Icon(Remix.search_fill),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Remix.download_line),
          activeIcon: Icon(Remix.download_fill),
          label: 'Downloads',
        ),
      ],
    );
  }
}
