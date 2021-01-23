import 'package:news_app/model/unsplash_image.dart';

class UnsplashImages {
  final List<UnsplashImage> unsplashImages;

  UnsplashImages({this.unsplashImages});

  factory UnsplashImages.fromJson(List<Map<String, dynamic>> json) {
    return UnsplashImages(unsplashImages: [UnsplashImage()]);
  }
}
