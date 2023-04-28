import 'package:flutter/material.dart';
import 'package:flutter_full_learn/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("I'm learning Scaffold now!"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      backgroundColor: Colors.red,
      body: const Text("Hello!"),
      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.abc_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), label: "Report")
          ],
        ),
      ),
    );
  }
}
