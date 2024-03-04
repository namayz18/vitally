import 'package:flutter/material.dart';
import 'package:vitally/core/extensions/text_styles.dart';
import 'package:vitally/core/extensions/theme_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool isPrimary;
  final VoidCallback? onPress;

  const CustomButton({
    Key? key,
    required this.title,
    this.isPrimary = true,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          height: 50,
          decoration: isPrimary
              ? BoxDecoration(
                  color: context.primary,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                )
              : BoxDecoration(
                  color: context.onPrimary,
                  border: Border.all(
                    color: const Color(0xffE5E5E5),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
          child: Center(
            child: Text(
              title,
              style: isPrimary ? context.button : context.textButton,
            ),
          ),
        ),
      ),
    );
  }
}
