import 'package:flutter/material.dart';
import 'package:news_app/feature/image_detail_screen.dart';
import 'package:news_app/model/unsplash_image.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({Key key, @required this.image}) : super(key: key);

  final UnsplashImage image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ImageDetailScreen.navigateToImageDetailScreen(context, image);
      },
      child: SizedBox(
        height: 250,
        child: Card(
          child: Image.network(image.imageUrl, fit: BoxFit.cover),
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
