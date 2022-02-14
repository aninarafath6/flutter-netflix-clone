

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/sizes/app_sizes.dart';
import 'package:remixicon/remixicon.dart';

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
        ),
      ],
    );
  }
}
