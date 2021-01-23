class UnsplashImage {
  final String id;
  final String author;
  final int likes;
  final String imageUrl;

  UnsplashImage({
    this.id,
    this.author,
    this.likes,
    this.imageUrl,
  });

  factory UnsplashImage.fromJson(Map<String, dynamic> json) {
    return UnsplashImage(
      id: json['id'],
      author: json['user']['name'],
      likes: json['likes'],
      imageUrl: json['urls']['thumb']
    );
  }
}
