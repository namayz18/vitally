import 'package:flutter/material.dart';
import 'package:vitally/core/extensions/text_styles.dart';
import 'package:vitally/models/shift.dart';
import 'package:vitally/widgets/card/shift_card.dart';
import 'package:vitally/widgets/textfield/search_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  bool isEmpty = false;
  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    controller.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    setState(() {});
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Hello Chris,',
                textAlign: TextAlign.start,
                style: context.display,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Good morning 🤗',
                textAlign: TextAlign.start,
                style: context.subDisplay,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SearchTextField(controller: controller),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Open Shifts Available',
            textAlign: TextAlign.start,
            style: context.heading,
          ),
        ),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: shifts.length,
          itemBuilder: (context, index) {
            return ShiftCard(
              shift: shifts[index],
              isMyShift: false,
            );
          },
        ),
      ]),
    );
  }
}
