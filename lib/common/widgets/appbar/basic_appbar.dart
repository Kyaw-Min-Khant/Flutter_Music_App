import 'package:flutter/material.dart';
import 'package:flutter_testing/common/helpers/is_dark_mode.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  const BasicAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title ?? const Text(""),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color:
                context.isDarkMode
                    ? const Color.fromARGB(102, 255, 255, 255)
                    : const Color.fromARGB(107, 23, 21, 21),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 16,
            color: context.isDarkMode ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
