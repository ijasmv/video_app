import 'dart:io';

class VideoData {
  String name;
  String url;
  File? savedFile;

  VideoData({
    this.savedFile,
    required this.name,
    required this.url,
  });
}
