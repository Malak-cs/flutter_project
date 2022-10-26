import 'package:flutter/material.dart';
import 'package:news/controllers/c_news.dart';
import 'package:news/models/m_details_app.dart';
import 'package:news/widgets/drawer/header_drawer.dart';
import 'package:news/widgets/drawer/sitting_custom.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key, required this.callBack});

  final void Function(int) callBack;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(children: [
          //* HEADER
          const DrawerHeaderApp(),
          //*SITTING
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  //*BBC
                  SittingCustom(
                      title: 'BBC',
                      subTitle: 'News',
                      icon: Icons.web,
                      onTap: () {
                        ModelDetailsApp data = ModelDetailsApp(
                            title: 'BBC',
                            image: '',
                            url: 'https://www.bbc.com/');
                        ControllerNews().goTo(context, data: data);
                      }),
                  //* News
                  SittingCustom(
                      title: 'News',
                      subTitle: 'Space',
                      icon: Icons.newspaper,
                      onTap: () {
                        Navigator.pop(context);
                        callBack(0);
                      }),
                  //* Video
                  SittingCustom(
                      title: 'Video',
                      subTitle: 'Space',
                      icon: Icons.video_library_rounded,
                      onTap: (() {
                        Navigator.pop(context);
                        callBack(1);
                      })),
                  // * Logout
                  SittingCustom(
                      title: 'Logout',
                      subTitle: 'Exit Account',
                      icon: Icons.logout,
                      onTap: () {})
                ],
              ))
        ]),
      ),
    );
  }
}
