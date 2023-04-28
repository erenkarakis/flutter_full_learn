import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 3 == 0) {
            return Text("Reklam yedin gurban olduğum");
          }
          return Divider();
        },
        itemBuilder: (context, index) {
          print("a");
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                  child: RandomImage(),
                ),
                Text("$index")
              ],
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
