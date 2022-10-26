import 'package:flutter/material.dart';
import 'package:news/controllers/c_video.dart';
import 'package:news/models/m_details_app.dart';

class CardVideo extends StatelessWidget {
  const CardVideo({super.key, required this.data});
  final ModelDetailsApp data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: InkWell(
        onTap: () => ControllersVideo().goTo(context, data: data),
        child: Card(
          // color: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              //image**
              Expanded(
                flex: 4,
                child: Image(
                  fit: BoxFit.fill,
                  width: double.infinity,
                  image: NetworkImage(data.image),
                ),
              ),

              //title**
              Expanded(
                child: Center(
                  child: Text(data.title),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
