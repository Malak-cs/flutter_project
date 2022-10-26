import 'package:flutter/material.dart';

class LayoutCont extends StatelessWidget {
  const LayoutCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      width: 300,
      height: 300,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      child: Container(color: Colors.white54),
    );
  }
}
