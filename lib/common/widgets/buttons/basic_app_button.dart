import 'package:flutter/material.dart';
import 'package:flutter_testing/common/helpers/is_dark_mode.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const BasicAppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: context.isDarkMode ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
