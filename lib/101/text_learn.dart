import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  const TextLearn({super.key});

  final String name = "Eren";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ("Hello $name"),
              style: ProjectStyles.TextStyle1,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              ("Hello $name"),
              style: ProjectStyles.TextStyle1,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle TextStyle1 = TextStyle(
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.lime,
      decoration: TextDecoration.underline);
}
