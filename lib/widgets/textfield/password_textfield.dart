import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool passwordVisible;
  final void Function(BuildContext) onTap;

  const PasswordTextField(
      {Key? key,
      required this.controller,
      required this.passwordVisible,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 13,
        ),
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffE5E5E5),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/lock.svg",
              width: 18,
              height: 18,
              color: controller.text.isEmpty
                  ? const Color(0xffB4B9C0)
                  : Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                obscureText: !passwordVisible,
                controller: controller,
                decoration: const InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Color(0xffB4B9C0),
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black,
                ),
                autofocus: false,
              ),
            ),
            GestureDetector(
              onTap: () {
                onTap(context);
              },
              child: SvgPicture.asset(
                "assets/icons/show.svg",
                width: 18,
                height: 18,
                color: !passwordVisible ? Colors.grey : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
