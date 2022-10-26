import 'package:flutter/material.dart';

class BottomNavigationShifting extends StatelessWidget {
  const BottomNavigationShifting(
      {super.key, required this.currentIndex, required this.callBack});
  final int currentIndex;
  final void Function(int) callBack;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        elevation: 20,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        currentIndex: currentIndex,
        onTap: callBack,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              activeIcon: Icon(Icons.newspaper_rounded),
              label: 'News',
              backgroundColor: Color.fromARGB(255, 108, 179, 238)),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded),
              activeIcon: Icon(Icons.video_collection_outlined),
              label: 'Video',
              backgroundColor: Color.fromARGB(255, 186, 117, 198)),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              activeIcon: Icon(Icons.favorite_border),
              label: 'Favorite',
              backgroundColor: Color.fromARGB(255, 234, 107, 98)),
        ]);
  }
}
