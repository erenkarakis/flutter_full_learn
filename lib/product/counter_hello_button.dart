import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counter = 0;
  final String _buttonConstantTitle = LanguageItems.welcomeTitle;

  void _updateCounter() {
    return setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _updateCounter,
      child: Text("$_buttonConstantTitle $_counter"),
    );
  }
}
