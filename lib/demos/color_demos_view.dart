import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if ((_backgroundColor != widget.initialColor) && widget.initialColor != null) {
      _changeBackgroundColor(widget.initialColor!);
    }
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  void _colorOnTap(int value) {
    if (value == _BackgroundColors.red.index) {
      _changeBackgroundColor(Colors.red);
    } else if (value == _BackgroundColors.blue.index) {
      _changeBackgroundColor(Colors.blue);
    } else {
      _changeBackgroundColor(Colors.yellow);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: [
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.redAccent), label: "Red"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blueAccent), label: "Blue"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellowAccent), label: "Yellow")
      ]),
    );
  }
}

enum _BackgroundColors { red, blue, yellow }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(width: 10, height: 10, color: color, child: Text("Red"));
  }
}
