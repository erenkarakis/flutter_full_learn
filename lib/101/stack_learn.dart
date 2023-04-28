import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Container(
          height: 100,
          color: Colors.red,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        )
      ]),
    );
  }
}
