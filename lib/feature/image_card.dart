import 'package:flutter/material.dart';
import 'package:news_app/feature/image_detail_screen.dart';
import 'package:news_app/model/unsplash_image.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({Key key, @required this.images, @required this.index})
      : super(key: key);

  final List<UnsplashImage> images;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ImageDetailScreen(
                      image: images[index],
                    )));
      },
      child: Container(
        height: 250,
        child: Card(
          child: Image.network(
            images[index]?.imageUrl,
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
