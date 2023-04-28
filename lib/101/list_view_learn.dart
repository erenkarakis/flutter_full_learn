import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            FittedBox(
              child: Text(
                "Merhaba",
                style: Theme.of(context).textTheme.headlineLarge,
                maxLines: 1,
              ),
            ),
            Container(color: Colors.blue, height: 300),
            Divider(),
            SizedBox(
                height: 300,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Container(color: Colors.red, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.yellow, width: 100),
                  Container(color: Colors.grey, width: 100),
                  Container(color: Colors.red, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.yellow, width: 100),
                  Container(color: Colors.grey, width: 100),
                ])),
            IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
            Container(color: Colors.yellow, height: 300),
            Divider(),
            Container(color: Colors.blue, height: 300),
            Divider(),
            Container(color: Colors.red, height: 300),
          ],
        ));
  }
}
