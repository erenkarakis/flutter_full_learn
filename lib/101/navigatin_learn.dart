import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/navigate_deatil_learm.dart';
import 'package:flutter_full_learn/101/page_view_learn.dart';
import 'package:flutter_full_learn/101/text_field_learn.dart';
import 'package:flutter_full_learn/demos/my_collections_demo.dart';

class NavigationLearnView extends StatefulWidget {
  const NavigationLearnView({super.key});

  @override
  State<NavigationLearnView> createState() => _NavigationLearnViewState();
}

class _NavigationLearnViewState extends State<NavigationLearnView> with NavigatorManager {
  List<int> selectedItems = [];

  void addSelection(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                  context: context,
                  widget: NavigateDetailLearn(
                    isOkey: selectedItems.contains(index),
                  ));

              if (response is bool) {
                addSelection(index, response);
              }
            },
            child: Padding(
                padding: EdgeInsets.all(8),
                child: Placeholder(color: selectedItems.contains(index) ? Colors.green : Colors.red)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToWidget(context: context, widget: TextFieldLearnView());
        },
        child: Icon(Icons.navigation_rounded),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget({required BuildContext context, required Widget widget}) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings()));
  }

  Future<T?> navigateToWidgetNormal<T>({required BuildContext context, required Widget widget}) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings()));
  }
}
