import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    Key? key,
    required this.label,
    this.color = Colors.white,
    this.isSmall = false,
  }) : super(key: key);

  final String label;
  final Color color;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isSmall ? 30.0 : 10,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: color == Colors.white ? Colors.black : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
