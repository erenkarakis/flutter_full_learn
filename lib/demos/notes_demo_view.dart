import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NotesDemoView extends StatelessWidget {
  const NotesDemoView({super.key});
  final String _imageTitle = "Create your first note!";
  final String _description = "Description ";
  final String _buttonCreateText = "Create a note";
  final String _buttonImportText = "Import notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text(
          "Notes Demo",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.black45),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(children: [
          PngImage(name: ImageItems().appleWithBookWithoutPath),
          _TitleWidget(imageTitle: _imageTitle),
          Padding(
            padding: PaddingItems.verticalPadding,
            child: _SubtitleWidget(
              textAlign: TextAlign.left,
              title: _description * 8,
            ),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                  height: ButtonSizes.buttonBigHeight,
                  child: Center(
                      child: Text(
                    _buttonCreateText,
                    style: Theme.of(context).textTheme.headlineSmall,
                  )))),
          TextButton(onPressed: () {}, child: Text(_buttonImportText)),
          const SizedBox(
            height: 50,
          )
        ]),
      ),
    );
  }
}

/// Centere text widget.
class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget(
      {super.key, this.textAlign = TextAlign.center, this.title = ""});

  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.imageTitle,
  });

  final String imageTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      imageTitle,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonSizes {
  static const double buttonBigHeight = 50;
}
