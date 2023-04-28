import 'package:flutter/material.dart';

class MyCollectinsDemo extends StatefulWidget {
  const MyCollectinsDemo({super.key});

  @override
  State<MyCollectinsDemo> createState() => _MyCollectinsDemoState();
}

class _MyCollectinsDemoState extends State<MyCollectinsDemo> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();

    _items = _ModelItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: _Paddings.paddingSymmetric,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CollectionCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CollectionCard extends StatelessWidget {
  const _CollectionCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
      margin: _Paddings.cardBottomMargin,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: _Paddings.cardInsidePadding,
          child: Column(
            children: [
              Expanded(child: Image.asset(_model.imageLink)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: _Paddings.paddingTitleText,
                    child: Text(_model.title),
                  ),
                  Text("${_model.price} eth"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imageLink;
  final String title;
  final double price;

  CollectionModel({required this.imageLink, required this.title, required this.price});
}

class _ModelItems {
  late final List<CollectionModel> items;

  _ModelItems() {
    items = [
      CollectionModel(imageLink: "assets/png/appleWithBook.png", title: "Abstract Art 1", price: 3.4),
      CollectionModel(imageLink: "assets/png/collection_image.png", title: "Abstract Art 2", price: 3.4),
      CollectionModel(imageLink: "assets/png/collection_image.png", title: "Abstract Art 3", price: 3.4),
      CollectionModel(imageLink: "assets/png/collection_image.png", title: "Abstract Art 4", price: 3.4),
    ];
  }
}

class _Paddings {
  static const paddingSymmetric = EdgeInsets.symmetric(horizontal: 20);
  static const paddingTitleText = EdgeInsets.only(top: 10, left: 15);
  static const cardBottomMargin = EdgeInsets.only(bottom: 20);
  static const cardInsidePadding = EdgeInsets.all(20.0);
}
