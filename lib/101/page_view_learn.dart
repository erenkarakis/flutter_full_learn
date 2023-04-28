import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/custom_widget_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/stateful_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text("$_currentPageIndex"),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: DurationUtils._durationShort, curve: Curves.easeIn);
            },
            child: Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: DurationUtils._durationShort, curve: Curves.easeIn);
            },
            child: Icon(Icons.chevron_right),
          )
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: true,
        onPageChanged: _updatePageIndex,
        controller: _pageController,
        children: [ImageLearnView(), CardLearnView(), CustomWidgetView()],
      ),
    );
  }

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }
}

class DurationUtils {
  static const _durationShort = Duration(milliseconds: 500);
}
