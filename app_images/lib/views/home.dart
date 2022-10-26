import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Image'),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(
            Icons.edit,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.delete,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.upload_circle,
          ),
        ],
      ),
      body: const Image(
        image: AssetImage('assets/images/computers.jpg'),
      ),
    );
  }
}
  // 'https://techservices.illinois.edu/wp-content/uploads/2021/08/computer-lab-icon-2-1024x1024.jpg'),
