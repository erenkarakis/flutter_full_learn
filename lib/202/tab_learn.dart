import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/appbar_learn.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/navigatin_learn.dart';
import 'package:flutter_full_learn/101/page_view_learn.dart';
import 'package:flutter_full_learn/101/text_field_learn.dart';

class TabLearnView extends StatefulWidget {
  const TabLearnView({super.key});

  @override
  State<TabLearnView> createState() => _TabLearnViewState();
}

class _TabLearnViewState extends State<TabLearnView> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double notchValue = 5;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey[800],
            onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            },
            child: Icon(
              Icons.home_outlined,
              color: Theme.of(context).tabBarTheme.labelColor,
            ),
          ),
          bottomNavigationBar: BottomAppBar(notchMargin: notchValue, child: _myTab()),
          body: _tabBarView(),
        ));
  }

  TabBar _myTab() {
    return TabBar(
      indicatorColor: Colors.white,
      controller: _tabController,
      tabs: _MyTabViews.values.map((e) => Tab(text: "${e.name}")).toList(),
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [IndicatorLearn(), TextFieldLearnView(), AppBarLearnView(), ImageLearnView()]);
  }
}

enum _MyTabViews { home, favorite, settings, profile }

extension _MyTabViewExtension on _MyTabViews {}

//BottomNavigation barın üstteki hali
// appBar: AppBar(
//             bottom: const TabBar(tabs: [
//               Tab(text: "Page 1"),
//               Tab(
//                 text: "Page 2",
//               )
//             ]),
//           ),