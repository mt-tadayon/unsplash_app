import 'package:flutter/material.dart';
import 'package:news_app/feature/image_card.dart';
import 'package:news_app/model/unsplash_image.dart';
import 'package:news_app/repository/get_unsplash_images.dart';

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
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepOrange,
            expandedHeight: 100,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                widget.title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          imageList(),
          imageFixedExtentList(),
          imageGrid(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  SliverList imageList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ImageCard(
            images: images,
            index: index,
          );
        },
        childCount: images.length,
      ),
    );
  }

  Widget imageFixedExtentList() {
    return SliverFixedExtentList(
      itemExtent: 100,
      delegate: SliverChildBuilderDelegate((
        BuildContext context,
        int index,
      ) {
        return ImageCard(
          images: images,
          index: index,
        );
      }, childCount: images.length),
    );
  }

  SliverGrid imageGrid() {
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ImageCard(
            images: images,
            index: index,
          );
        },
        childCount: images.length,
      ),
    );
  }
}
