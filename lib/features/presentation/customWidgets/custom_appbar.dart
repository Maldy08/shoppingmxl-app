import 'package:flutter/material.dart';
import '../../../colors/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const CustomAppBar(
      {super.key, required this.title, this.height = kToolbarHeight});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leadingWidth: 100,
      leading: ElevatedButton.icon(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_rounded,
        ),
        label: const Text(''),
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.only(left: 5)),
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          foregroundColor: MaterialStatePropertyAll(Colors.black),
          elevation: MaterialStatePropertyAll(0),
          shape: MaterialStatePropertyAll(
            CircleBorder(),
          ),
        ),
      ),
      elevation: 0.0,
      backgroundColor: bgContainer,
      foregroundColor: Colors.black,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
