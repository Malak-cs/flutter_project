import 'package:flutter/material.dart';

class AnimalsBtn extends StatelessWidget {
  const AnimalsBtn(
      {super.key,
      required this.name,
      this.color = Colors.indigo,
      required this.onClickBtn,
      required this.icon});
  final String name;
  final Color color;
  final void Function() onClickBtn;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton.icon(
          onPressed: () {
            onClickBtn();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(8),
              alignment: Alignment.centerLeft),
          label: Text(name),
          icon: Image(
            image: AssetImage(icon),
            width: 25,
          ),
        ),
      ),
    );
  }
}
