import 'package:flutter/material.dart';

class LayoutRow extends StatelessWidget {
  const LayoutRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      height: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
              height: 70),
        ],
      ),
    );
  }
}
