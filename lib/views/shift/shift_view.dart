import 'package:flutter/material.dart';
import 'package:vitally/core/extensions/theme_colors.dart';
import 'package:vitally/models/shift.dart';
import 'package:vitally/widgets/card/shift_card.dart';

class ShiftView extends StatefulWidget {
  const ShiftView({Key? key}) : super(key: key);

  @override
  State<ShiftView> createState() => _ShiftViewState();
}

class _ShiftViewState extends State<ShiftView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My shifts',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.calendar_month,
              color: context.primary,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Upcoming shifts',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: myShifts.length,
            itemBuilder: (context, index) {
              return ShiftCard(
                shift: myShifts[index],
                isMyShift: true,
              );
            },
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Recent shifts',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: shifts.length,
            itemBuilder: (context, index) {
              return ShiftCard(
                shift: shifts[index],
                isMyShift: true,
              );
            },
          ),
        ],
      ),
    );
  }
}
