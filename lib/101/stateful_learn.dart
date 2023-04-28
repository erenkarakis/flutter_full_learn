import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefulLearnView extends StatefulWidget {
  const StatefulLearnView({super.key});

  @override
  State<StatefulLearnView> createState() => _StatefulLearnViewState();
}

class _StatefulLearnViewState extends State<StatefulLearnView> {
  int _countValue = 0;
  int _increamentSize = 1;

  int updateValue({required int value, required int increamentSize}) {
    value += increamentSize;
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _increaseButton(),
          _decreaseButton(),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              _countValue.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const CounterHelloButton()
          ],
        ),
      ),
    );
  }

  FloatingActionButton _increaseButton() {
    print("1");
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _countValue = updateValue(value: _countValue, increamentSize: _increamentSize);
        });
      },
      child: Icon(Icons.add),
    );
  }

  Padding _decreaseButton() {
    print("2");
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            _countValue = updateValue(value: _countValue, increamentSize: _increamentSize * -1);
          });
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
