import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/screen/main_screen/widgets/bottom_nav.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNav(),
    );
  }
}
