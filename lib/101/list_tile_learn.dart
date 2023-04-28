import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({super.key});
  final String listTileTitle = "My Cart";
  final String listTileSubtitle = "Add something to your card!";
  final String imageUrl = 'https://picsum.photos/seed/picsum/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                        width: 2, color: TileColors().listTileBackgroundColor)),
                title: const RandomImage(),
                contentPadding: EdgeInsets.zero,
                onTap: () {},
                subtitle: Text(listTileSubtitle),
                minVerticalPadding: 0,
                leading: Container(
                  width: 30,
                  height: 150,
                  alignment: Alignment.bottomCenter,
                  child: const Icon(Icons.monetization_on_outlined),
                  color: Colors.red,
                ),
                trailing: const SizedBox(child: Icon(Icons.chevron_right)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/// Tile colors Emreylen yabtıg
class TileColors {
  final Color listTileBackgroundColor = Colors.transparent;
}
