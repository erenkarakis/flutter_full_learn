import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 75.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(child: RandomImage(), bottom: _cardHeight / 2),
                  Positioned(height: _cardHeight, width: 250, bottom: 0, child: _cardCustom())
                ],
              )),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }

  Card _cardCustom() {
    return Card(
      elevation: 20,
      color: Colors.grey[800],
      shape: RoundedRectangleBorder(),
    );
  }
}
