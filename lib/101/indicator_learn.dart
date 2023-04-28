import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          actions: [CenterCircularProggressBar()],
        ),
        body: Column(
          children: [
            LinearProgressIndicator(),
            Text(Test().printYourName(isName: true))
          ],
        ));
  }
}

class CenterCircularProggressBar extends StatelessWidget {
  const CenterCircularProggressBar({
    super.key,
  });
  final Color barColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: barColor,
        strokeWidth: 8,
      ),
    );
  }
}

class Test {
  String printYourName({String? name, required bool isName}) {
    name = name ?? "Misafir";
    return ("Merhaba ${name}");
  }
}
