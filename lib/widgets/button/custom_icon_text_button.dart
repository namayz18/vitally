import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vitally/core/extensions/text_styles.dart';
import 'package:vitally/core/extensions/theme_colors.dart';

class CustomIconTextButton extends StatelessWidget {
  final String icon;
  final String title;

  const CustomIconTextButton(
      {Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
          onTap: () => {},
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: context.onPrimary,
              border: Border.all(
                color: const Color(0xffE5E5E5),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                SvgPicture.asset(
                  icon,
                  width: 18,
                  height: 18,
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: context.title,
                ),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}
