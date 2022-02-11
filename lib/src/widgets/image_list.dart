import 'package:flutter/material.dart';
import '../models/image_models.dart';

class ImageList extends StatelessWidget {
  final List<ImageModels> images;

  ImageList(this.images);

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModels image) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(image.url),
            padding: const EdgeInsets.only(
              bottom: 8.0,
            ),
          ),
          Text(image.title),
        ],
      ),
    );
  }
}
