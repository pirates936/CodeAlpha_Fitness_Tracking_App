import 'package:flutter/material.dart';

import 'package:fitness_trackimg_app/constraints/color.dart';


class ListWheelScrollerView extends StatelessWidget {
  final List<String> items;
  const ListWheelScrollerView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return ListWheelScrollView(
        magnification: 1.3,
        useMagnifier: true,
        overAndUnderCenterOpacity: 0.19,
        physics: FixedExtentScrollPhysics(),
        itemExtent: 50,
        onSelectedItemChanged: (index) {
          print(index);
        },
        diameterRatio: 1.5,
        children: items.map((level) {
          return Text(
            level,
            style: TextStyle(
                fontSize: 30, color: PrimaryColor, fontWeight: FontWeight.bold),
          );
        }).toList());
  }
}
