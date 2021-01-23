import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/unsplash_image.dart';

final apiUrl = 'https://api.unsplash.com/photos';
final perPage = '10';
final clientId = '9F24VY9zRN493xAWrbPwLJmy9Bdpvqs-yJPXtHbqZFY';

Future<List<UnsplashImage>> fetchUnsplashImages() async {
  var url = '$apiUrl?per_page=$perPage&client_id=$clientId';
  final response = await http.get(url);

  if (response.statusCode == 200) {
    dynamic decodedJson = jsonDecode(response.body);

    List images = (decodedJson as List)
        .map((image) => UnsplashImage.fromJson(image))
        .toList();
    return images;
  } else {
    throw Exception('Failed to load images');
  }
}
