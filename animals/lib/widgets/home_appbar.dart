import 'package:animals/constant/fonts.dart';
import 'package:animals/constant/name_animals.dart';
import 'package:animals/constant/path_images.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white70,
      title: Text(
        NameAnimals.animals.toUpperCase(),
        style: const TextStyle(
          color: Colors.black,
          fontFamily: kSourcepro,
          fontSize: 40,
        ),
        textAlign: TextAlign.center,
      ),
      leading: const Icon(
        Icons.menu,
        size: 30,
        color: Colors.black,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(
            image: AssetImage(PathImages.pawprint),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

//  TextStyle(
//           color: Color.fromARGB(255, 0, 0, 0),
//           fontSize: 30,
//           fontStyle: FontStyle.normal,
//           fontWeight: FontWeight.w300,
//           letterSpacing: 5,
//         ),