import 'package:flutter/material.dart';
import 'package:news/models/m_details_app.dart';

abstract class HandleControllers {
  int get length;

  ModelDetailsApp getItem(int index);

  void goTo(BuildContext context, {required ModelDetailsApp data});
}
