import 'package:flutter/material.dart';
import 'package:vitally/core/extensions/text_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    this.buttonText,
    this.onPress,
  }) : super(key: key);

  final String title;
  final String? buttonText;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: context.heading,
          ),
          buttonText == null
              ? const SizedBox()
              : GestureDetector(
                  onTap: () => onPress!(),
                  child: Text(
                    buttonText ?? "",
                    textAlign: TextAlign.start,
                    style: context.button,
                  ),
                ),
        ],
      ),
    );
  }
}
