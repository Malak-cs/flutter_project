import 'package:flutter/material.dart';
import 'package:news/models/m_details_app.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io' show Platform;

class PageWebView extends StatefulWidget {
  const PageWebView({super.key, required this.data});
  // final String title;
  // final String url;
  final ModelDetailsApp data;

  @override
  State<PageWebView> createState() => _PageWebViewState();
}

bool loading = true;

class _PageWebViewState extends State<PageWebView> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.title),
        centerTitle: true,
        backgroundColor: Platform.isAndroid ? Colors.indigo : Colors.red,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          WebView(
            initialUrl: widget.data.url,
            javascriptMode: JavascriptMode.unrestricted,
            backgroundColor: Colors.white,
            onPageStarted: (url) {
              loading = false;
              setState(() {});
            },
          ),
          if (loading)
            const SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  strokeWidth: 8,
                  color: Colors.indigo,
                ))
        ],
      ),
    );
  }
}
