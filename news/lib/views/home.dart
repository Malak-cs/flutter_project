import 'package:flutter/material.dart';
import 'package:news/widgets/app_bar.dart';
import 'package:news/widgets/b_navigation_shifting.dart';
import 'package:news/widgets/body_video.dart';
import '../widgets/drawer/home_drawer.dart';
import '../widgets/body_news.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  //* KEY
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  //* currentIndex
  int currentIndex = 0;
  List<Widget> body = [
    const BodyNews(),
    const BodyVideo(),
    Container(color: Colors.orangeAccent),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        scaffoldKey: scaffoldKey,
      ),
      body: Scaffold(
        key: scaffoldKey,
        drawer: HomeDrawer(
          callBack: (int page) {
            currentIndex = page;
            setState(() {});
          },
        ),
        body: body[currentIndex],
        bottomNavigationBar: BottomNavigationShifting(
          currentIndex: currentIndex,
          callBack: (newIndex) {
            currentIndex = newIndex;
            setState(() {});
          },
        ),
      ),
    );
  }
}

// Column(children: const [
//           //*
//           CardNews(),
//           CardVideo(),
//         ]),