import 'package:flutter/material.dart';

class StatalessLearnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _TitleTextWidget(title: "dattiri dat"),
          _TitleTextWidget(title: "dattiri dat"),
          _TitleTextWidget(title: "dattiri dat"),
          _TitleTextWidget(title: "dattiri dat"),
        ],
      ),
    );
  }
}

class _TitleTextWidget extends StatelessWidget {
  _TitleTextWidget({super.key, required this.title});
  late final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headlineMedium);
  }
}
