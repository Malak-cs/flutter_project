import 'package:animals/constant/name_animals.dart';
import 'package:animals/constant/path_audio.dart';
import 'package:animals/constant/path_icons.dart';
import 'package:animals/constant/path_images.dart';
import 'package:animals/widgets/btn_animals.dart';
import 'package:flutter/material.dart';

class ButtonAnimals extends StatelessWidget {
  const ButtonAnimals({super.key, required this.callBack});
  final void Function(String, String) callBack;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(18))),
        child: Column(
          children: [
            //row line one
            Row(children: [
              AnimalsBtn(
                name: NameAnimals.lion,
                icon: PathIcon.lion,
                onClickBtn: () => callBack(PathImages.lion, PathAudio.lion),
              ),
              AnimalsBtn(
                name: NameAnimals.bird,
                icon: PathIcon.bird,
                color: const Color.fromARGB(255, 42, 27, 101),
                onClickBtn: () => callBack(PathImages.bird, PathAudio.bird),
              ),
              AnimalsBtn(
                name: NameAnimals.cat,
                icon: PathIcon.cat,
                onClickBtn: () => callBack(PathImages.cat, PathAudio.cat),
              ),
            ]),
            //row line two
            Row(children: [
              AnimalsBtn(
                name: NameAnimals.dog,
                icon: PathIcon.dog,
                color: const Color.fromARGB(255, 42, 27, 101),
                onClickBtn: () => callBack(PathImages.dog, PathAudio.dog),
              ),
              AnimalsBtn(
                name: NameAnimals.elephant,
                icon: PathIcon.elephant,
                onClickBtn: () =>
                    callBack(PathImages.elephant, PathAudio.elephant),
              ),
              AnimalsBtn(
                name: NameAnimals.wolf,
                icon: PathIcon.wolf,
                color: const Color.fromARGB(255, 42, 27, 101),
                onClickBtn: () => callBack(PathImages.wolf, PathAudio.wolf),
              ),
            ]),
            //row line three
          ],
        ),
      ),
    );
  }
}
