class ImageModels {
  int id = 0;
  String url = '';
  String title = '';

  ImageModels(this.id, this.url, this.title);

  ImageModels.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
