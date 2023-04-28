import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Learn"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 400,
            child: PngImage(name: "appleWithBook"),
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/appleWithBook.png";
  final String appleWithBookWithoutPath = "appleWithBook";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.contain,
    );
  }

  String get _nameWithPath => "assets/png/$name.png";
}
