import 'package:flutter/material.dart';

class LayoutColumn extends StatelessWidget {
  const LayoutColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                color: const Color.fromARGB(137, 238, 126, 126),
                width: 70,
                height: 70),
            Container(
                color: const Color.fromARGB(136, 234, 149, 149),
                width: 70,
                height: 70),
            Container(
                color: const Color.fromARGB(136, 235, 177, 177),
                width: 70,
                height: 70),
            Container(
                color: const Color.fromARGB(136, 246, 211, 211),
                width: 70,
                height: 70)
          ],
        ));
  }
}
