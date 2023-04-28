import 'package:flutter/material.dart';

class CustomWidgetView extends StatelessWidget {
  const CustomWidgetView({super.key});
  final String buttonText = "Food";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomFoodButton(buttonText: buttonText)),
              ),
            ),
            const SizedBox(height: 100),
            CustomFoodButton(buttonText: buttonText)
          ],
        ));
  }
}

class _PaddingUtil {
  final EdgeInsets normalPadding = EdgeInsets.all(8);
  final EdgeInsets normalPadding2x = EdgeInsets.all(16);
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton({
    super.key,
    required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: _ColorsUtil.buttonBackgroundColor,
            shape: const StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: _PaddingUtil().normalPadding2x,
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: _ColorsUtil.buttonTextColor,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}

class _ColorsUtil {
  static const Color buttonTextColor = Colors.white;
  static const Color buttonBackgroundColor = Colors.red;
}
