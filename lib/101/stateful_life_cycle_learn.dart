import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class StatefulLifeCycleLearnView extends StatefulWidget {
  const StatefulLifeCycleLearnView({super.key, required this.message});
  final String message;

  @override
  State<StatefulLifeCycleLearnView> createState() => _StatefulLifeCycleLearnViewState();
}

class _StatefulLifeCycleLearnViewState extends State<StatefulLifeCycleLearnView> {
  String _mesaage = "";
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependecies");
  }

  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearnView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.message != _mesaage) {
      print("didUpdateWidget");
      _mesaage = widget.message;
      _computeMessage();
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    _mesaage = "";
  }

  @override
  void initState() {
    super.initState();
    _mesaage = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeMessage();
    print("initState");
  }

  void _computeMessage() {
    if (_isOdd) {
      _mesaage += "Tek";
    } else {
      _mesaage += "Cift";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_mesaage),
        ),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_mesaage))
            : ElevatedButton(onPressed: () {}, child: Text(_mesaage)));
  }
}
