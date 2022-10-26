import 'package:animals/constant/path_images.dart';
import 'package:animals/widgets/build_btn_animals.dart';
import 'package:animals/widgets/home_appbar.dart';
import 'package:animals/widgets/image_animals.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  //default image صورة ثابتة
  String image = PathImages.animals;
  //audioplayer
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const HomeAppBar(),
        body: SafeArea(
            child: Container(
          margin: const EdgeInsets.all(10),
          clipBehavior: Clip.antiAlias, //هاد عشان الحواف ماتطلع عن البوردر
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 3, 44, 141), width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              // Images
              AnimalImages(image: image),
              const Divider(
                color: Color.fromARGB(255, 3, 44, 141),
                thickness: 2,
                height: 0,
              ),
              // Buttons
              ButtonAnimals(
                callBack: ((String image, String audio) {
                  this.image = image;
                  audioPlayer.setSourceAsset(audio);
                  audioPlayer.resume();
                  setState(() {});
                }),
              ),
            ],
          ),
        )));
  }
}

/* Row(
        children: [
          Expanded(child: Image(image: AssetImage(PathImages.cat))),
          Expanded(
              child: Image(
            image: AssetImage(PathImages.bird),
          )),
          Expanded(
              flex: 1,
              child: Image(
                image: AssetImage(PathImages.dog),
              )),
        ],
      ), */
// expanded

// AnimalsBtn(
//   name: NameAnimals.bird,
//   icon: PathIcon.bird,
//   onClickBtn: () {
//     image = PathImages.bird;
//     setState(() {});
//   },
// ),
