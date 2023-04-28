import 'package:flutter/material.dart';

class ColumnRowLearnView extends StatelessWidget {
  const ColumnRowLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
              ],
            )),
        Spacer(
          flex: 2,
        ),
        Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("data1"),
                Text("data2"),
                Text("data3"),
                Text("data4"),
              ],
            )),
        SizedBox(
          height: 200,
          child: Column(children: [
            Expanded(child: Text("a1")),
            Expanded(child: Text("a2")),
            Expanded(child: Text("a3")),
            Spacer(),
            Expanded(child: Text("a4")),
          ]),
        ),
      ]),
    );
  }
}
