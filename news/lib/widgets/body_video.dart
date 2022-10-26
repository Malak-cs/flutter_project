import 'package:flutter/material.dart';
import 'package:news/controllers/c_video.dart';
import 'package:news/widgets/card_video.dart';

class BodyVideo extends StatelessWidget {
  const BodyVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ControllersVideo().length,
        itemBuilder: (context, index) {
          return CardVideo(
            data: ControllersVideo().getItem(index),
          );
        });
  }
}
