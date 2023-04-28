import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Learn"), centerTitle: true),
      body: Column(
        children: [
          TextButton(
            child: Text("Text Button"),
            onPressed: () {},
          ),
          ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
          ElevatedButton(onPressed: null, child: Text("Elevated Button")),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.accessible_forward_outlined)),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.plus_one),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: InkWell(
              child: Text("InkWell"),
              onTap: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
            child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 40, left: 40),
                child: Text(
                  "Place Bid",
                  style: Theme.of(context).textTheme.headlineSmall,
                )),
          ),
        ],
      ),
    );
  }
}
