import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Card(
          margin: EdgeInsets.all(10),
          color: Colors.indigo,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  20)), //StadiumBorder(),RoundedRectangularBorder(),CircleBorder()
          child: SizedBox(
            width: 300,
            height: 100,
          ),
          elevation: 10,
        ),
        Card(
          elevation: 10,
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text("Eren")),
          ),
        ),
        _CustomCard(
            child: const SizedBox(
                width: 300, height: 100, child: Center(child: Text("Eren"))))
      ]),
    );
  }
}

class _CustomCard extends StatelessWidget {
  _CustomCard({super.key, required this.child});

  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Colors.indigo,
      shape:
          roundedRectangleBorder, //StadiumBorder(),RoundedRectangularBorder(),CircleBorder()
      elevation: 10,
      child: child,
    );
  }
}
