import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_models.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModels> images = [];

  fetchImage() async {
    counter++;
    var response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    var imageModel = ImageModels.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: const Text("Let's see some images"),
        ),
      ),
    );
  }
}
