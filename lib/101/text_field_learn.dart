import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

class TextFieldLearnView extends StatefulWidget {
  const TextFieldLearnView({super.key});

  @override
  State<TextFieldLearnView> createState() => _TextFieldLearnViewState();
}

class _TextFieldLearnViewState extends State<TextFieldLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 20,
        buildCounter: (BuildContext context,
            {required int currentLength, required bool isFocused, required int? maxLength}) {
          return Container(
            height: 10,
            width: 20,
            color: Colors.green[50 * (currentLength)],
          );
        },
        autofillHints: [AutofillHints.email],
        cursorColor: Colors.blueAccent,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.mail),
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            labelText: LanguageItems.mailLabeText),
      ),
    );
  }
}
