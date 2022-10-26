import 'package:flutter/material.dart';
import 'package:news/controllers/handle_controllers.dart';
import 'package:news/models/m_details_app.dart';
import 'package:news/views/app_webview.dart';

class ControllerNews extends HandleControllers {
  List<ModelDetailsApp> dataNews = [
    ModelDetailsApp(
        title: 'First Images from the James Webb Space Telescope',
        image:
            'https://www.nasa.gov/sites/default/files/styles/full_width/public/thumbnails/image/main_image_star-forming_region_carina_nircam_final-1280.jpg?itok=9hyNVMwe',
        url: 'https://www.nasa.gov/webbfirstimages'),
    ModelDetailsApp(
        title: 'James Webb telescope solves dusty star mystery',
        image:
            'https://ichef.bbci.co.uk/news/976/cpsprodpb/5574/production/_127067812_wr140_nospikes.jpg.webp',
        url: 'https://www.bbc.com/news/science-environment-63234027'),
    ModelDetailsApp(
        title: 'The Story of Webb',
        image:
            'https://live.staticflickr.com/4179/34537748622_dbf260f384_b.jpg',
        url:
            'https://www.flickr.com/photos/nasawebbtelescope/albums/72157629134274763'),
    ModelDetailsApp(
        title: 'Webb vs Hubble Telescope ',
        image: 'https://farm6.staticflickr.com/5451/9511009080_60294d285f.jpg',
        url:
            'https://www.jwst.nasa.gov/content/about/comparisonWebbVsHubble.html#:~:text=Webb%20will%20primarily%20look%20at,much%20bigger%20mirror%20than%20Hubble.')
  ];

  @override
  int get length => dataNews.length;

  @override
  ModelDetailsApp getItem(int index) => dataNews.elementAt(index);

  @override
  void goTo(BuildContext context, {required ModelDetailsApp data}) {
    MaterialPageRoute route =
        MaterialPageRoute(builder: (context) => PageWebView(data: data));
    Navigator.push(context, route);
  }
}
