import 'package:flutter/material.dart';
import 'package:news_app/model/unsplash_image.dart';

class ImageDetailScreen extends StatelessWidget {
  final UnsplashImage image;

  const ImageDetailScreen({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepOrange,
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(image.author),
              centerTitle: true,
              background: Image.network(
                image.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, int index) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          image.likes.toString(),
                          style: TextStyle(fontSize: 32),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.thumb_up,
                          size: 32,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquet porttitor lacus luctus accumsan. Neque volutpat ac tincidunt vitae semper quis lectus. Nunc lobortis mattis aliquam faucibus purus in. Fringilla phasellus faucibus scelerisque eleifend. Enim ut sem viverra aliquet eget sit amet tellus cras. Vel risus commodo viverra maecenas accumsan lacus vel facilisis. Blandit massa enim nec dui nunc mattis enim ut. A erat nam at lectus urna duis convallis convallis. Netus et malesuada fames ac turpis. A scelerisque purus semper eget duis at tellus. Congue eu consequat ac felis donec et. Felis imperdiet proin fermentum leo vel orci porta non pulvinar. Pellentesque adipiscing commodo elit at. Etiam tempor orci eu lobortis elementum. Sed enim ut sem viverra. Bibendum at varius vel pharetra vel turpis nunc. Mollis aliquam ut porttitor leo a diam sollicitudin. Turpis tincidunt id aliquet risus feugiat in ante metus dictum.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Eget sit amet tellus cras adipiscing enim eu turpis. Eu facilisis sed odio morbi quis commodo odio aenean. Ut venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Eget magna fermentum iaculis eu non. Id consectetur purus ut faucibus pulvinar elementum integer enim neque. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Orci sagittis eu volutpat odio facilisis mauris sit amet massa. Convallis aenean et tortor at. Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis. Magna fermentum iaculis eu non diam phasellus vestibulum lorem. Tellus cras adipiscing enim eu turpis. Elit pellentesque habitant morbi tristique senectus et netus.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              );
            }, childCount: 1),
          )
        ],
      ),
    );
  }
}
