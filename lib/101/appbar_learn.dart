import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});
  final _text = "AppBar Learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).hintColor),
        ),
        leading: Icon(
          Icons.chevron_left,
          color: Colors.black,
        ),
        actionsIconTheme: IconThemeData(color: Colors.black, size: 20),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.airplay))],
      ),
    );
  }
}
