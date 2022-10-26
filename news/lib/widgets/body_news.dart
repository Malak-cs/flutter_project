import 'package:flutter/material.dart';
import 'package:news/controllers/c_news.dart';
import 'package:news/widgets/card_news.dart';

class BodyNews extends StatelessWidget {
  const BodyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ControllerNews().length,
        itemBuilder: (context, index) {
          return CardNews(
            data: ControllerNews().getItem(index),
          );
        });
  }
}
