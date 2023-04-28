import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key, this.height = 100});
  final String imageUrl = 'https://picsum.photos/seed/picsum/200/300';
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
