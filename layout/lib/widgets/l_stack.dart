import 'package:flutter/material.dart';

class LayoutStack extends StatelessWidget {
  const LayoutStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Image(
            image: NetworkImage(
                'https://s27389.pcdn.co/wp-content/uploads/2021/08/hottest-jobs-data-science-right-now-955x440.jpeg.optimal.jpeg')),
        Positioned(
          top: 100,
          bottom: 40,
          child: Text('Data Science'),
        )
      ],
    );
  }
}
