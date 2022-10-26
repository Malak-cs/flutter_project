import 'package:flutter/material.dart';

class AnimalImages extends StatelessWidget {
  const AnimalImages({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 161, 201, 235),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(18)),
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.cover))),
    );
  }
}
