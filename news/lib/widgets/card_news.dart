import 'package:flutter/material.dart';
import 'package:news/controllers/c_news.dart';
import 'package:news/models/m_details_app.dart';

class CardNews extends StatelessWidget {
  const CardNews({super.key, required this.data});
  final ModelDetailsApp data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: InkWell(
        onTap: () => ControllerNews().goTo(context, data: data),
        child: Card(
          elevation: 5,
          // color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              // image***
              Expanded(
                  child: Image(
                fit: BoxFit.cover,
                height: 150,
                image: NetworkImage(
                  data.image,
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              //title***
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                    child: Text(
                      data.title,
                      style: const TextStyle(height: 1.5),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
