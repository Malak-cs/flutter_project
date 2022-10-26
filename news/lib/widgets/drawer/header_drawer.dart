import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerHeaderApp extends StatelessWidget {
  const DrawerHeaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        // * image
        Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/NASA_logo.svg/2449px-NASA_logo.svg.png')))),
        // * name&email
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nasa BBC', style: GoogleFonts.openSans()),
            const SizedBox(
              height: 10,
            ),
            const Text('https://www.nasa.gov/')
          ],
        )),
      ],
    ));
  }
}
