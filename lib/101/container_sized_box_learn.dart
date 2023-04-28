import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text("data" * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("b" * 50),
          ),
          Container(
            //color: Colors.blueAccent,
            constraints: const BoxConstraints(
                maxWidth: 150, minWidth: 100, maxHeight: 60),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectContainerDecoration(),
            child: Text("a" * 10),
            //decoration: ProjectUIUtils.boxDecoration,
          ),
        ],
      ),
    );
  }
}

class ProjectUIUtils {
  static BoxDecoration boxDecoration = BoxDecoration(
      //color: Colors.blueGrey,
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      //shape: BoxShape.circle,
      boxShadow: const [
        BoxShadow(color: Colors.red, offset: Offset(0.1, 1), blurRadius: 30)
      ],
      borderRadius: BorderRadius.circular(20),
      border: Border.all(width: 5, color: Colors.white60));
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            //color: Colors.blueGrey,
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            //shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                  color: Colors.red, offset: Offset(0.1, 1), blurRadius: 30)
            ],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 5, color: Colors.white60));
}
