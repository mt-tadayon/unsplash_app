import 'package:flutter/material.dart';
import 'package:news_app/feature/image_card.dart';
import 'package:news_app/model/unsplash_image.dart';
import 'package:news_app/repository/get_unsplash_images.dart';

const appBarTextStyle = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

class ImagesPage extends StatefulWidget {
  ImagesPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  List<UnsplashImage> images = [];

  @override
  void initState() {
    _fetchNewImages();
    super.initState();
  }

  Future<void> _fetchNewImages() async {
    images = await fetchUnsplashImages();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        widget.title,
        style: appBarTextStyle,
      ),
      // TODO 0: CustomScrollView with scrollDirection and slivers
      // TODO 0.1: Add a scrollDirection Axis.vertical to the CustomScrollView
      // TODO 0.2: Add a list of slivers
      // TODO 1: Add a [SliverAppBar] with floating, snap and flexibleSpace
      // TODO 2: Add a FlexibleSpaceBar Widget with a text of widget.title
      // TODO 3: Create a [SliverList] with a SliverChildBuilderDelegate
      // TODO 4: For each element in the images list create a ImageCard
      // TODO 5: Extract the widget into a private widget imageList()
      // TODO 6: Create a SliverFixedExtendList with a SliverChildBuilderDelegate and itemExtend of 100
      // TODO 7: For each element in the images list display one ImageCard
      // TODO 8: Extract the widget into a private widget imageFixedExtentList()
      // TODO 9: Create a SliverGrid with SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) and SliverChildBuilderDelegate
      // TODO 10: For each element in the images list display one ImageCard
      // TODO 11: extract into a own private widget imageGrid()
    );
  }
}
