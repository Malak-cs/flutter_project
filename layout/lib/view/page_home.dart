import 'package:flutter/material.dart';
import 'package:layout/widgets/appbar_home.dart';
import 'package:layout/widgets/l_column.dart';
import 'package:layout/widgets/l_row.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Column(
            verticalDirection: VerticalDirection.up,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('17:07'),
              Icon(Icons.timer),
              // Icon(Icons.watch),
            ],
          ),
          const Text('mm:ss'),
        ],
      ),
    );
  }
}
