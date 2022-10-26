import 'package:flutter/material.dart';
import "dart:io" show Platform;

import 'package:news/controllers/c_video.dart';
import 'package:news/models/m_details_app.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('BBC'),
      backgroundColor: Platform.isAndroid ? Colors.indigo : Colors.red,
      leading: IconButton(
          onPressed: () {
            if (scaffoldKey.currentState?.isDrawerOpen == false) {
              scaffoldKey.currentState?.openDrawer();
            } else {
              scaffoldKey.currentState?.openEndDrawer();
            }
          },
          icon: const Icon(
            Icons.menu,
            size: 40,
          )),
      actions: [
        IconButton(
            padding: const EdgeInsets.only(right: 15),
            onPressed: () {
              ModelDetailsApp data = ModelDetailsApp(
                  title: 'BBC', image: '', url: 'https://www.bbc.com/');
              ControllersVideo().goTo(context, data: data);
            },
            icon: const Icon(
              Icons.newspaper,
              size: 40,
            )),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
