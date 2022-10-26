import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text('layout'),
        leading: const Icon(
          Icons.menu,
          size: 40,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
