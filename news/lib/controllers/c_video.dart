import 'package:flutter/material.dart';
import 'package:news/controllers/handle_controllers.dart';
import 'package:news/models/m_details_app.dart';
import 'package:news/views/app_webview.dart';

class ControllersVideo extends HandleControllers {
  List<ModelDetailsApp> dataVideo = [
    ModelDetailsApp(
        title: 'First Images From the James Webb Space Telescope',
        image:
            'https://www.nasa.gov/sites/default/files/styles/full_width/public/thumbnails/image/main_image_star-forming_region_carina_nircam_final-1280.jpg',
        url: 'https://www.youtube.com/watch?v=nmMRMIE3MGw'),
    ModelDetailsApp(
        title: 'James Webb Space Telescope Launch',
        image:
            'https://wtop.com/wp-content/uploads/2021/12/AP21351632077585-scaled.jpg',
        url: 'https://www.youtube.com/watch?v=7nT7JGZMbtM'),
    ModelDetailsApp(
        title: 'Webb telescope',
        image:
            'https://solarsystem.nasa.gov/system/content_pages/main_images/1027_JWST_Illustration-1280.jpg',
        url: 'https://www.youtube.com/watch?v=tnbSIbsF4t4'),
    ModelDetailsApp(
        title: 'The Made of webb',
        image:
            'http://www.nasa.gov/sites/default/files/thumbnails/image/header.jpeg',
        url: 'https://www.youtube.com/watch?v=aICaAEXDJQQ')
  ];

  @override
  ModelDetailsApp getItem(int index) => dataVideo.elementAt(index);

  @override
  int get length => dataVideo.length;

  @override
  void goTo(BuildContext context, {required ModelDetailsApp data}) {
    MaterialPageRoute route =
        MaterialPageRoute(builder: (context) => PageWebView(data: data));
    Navigator.push(context, route);
  }
}
