import "package:fitness_trackimg_app/models/DetailedPageButton.dart";
import "package:fitness_trackimg_app/models/DetailedPageTitle.dart";
import 'package:fitness_trackimg_app/models/screens/ListWheelScrollerView.dart';
import "package:flutter/material.dart";

class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _AgePageState();
}

class _AgePageState extends State<GoalPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "loose weight",
      "gain weight",
      "stay fit",
      "build muscle",
      "improve endurance",
      "stay healthy",
    ];
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(
          top: size.height * 0.06,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.height * 0.03,
        ),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            const DetailPageTitle(
              title: "What is your goal ? ",
              text: "This will help us to create personalized content for you",
              color: Colors.white,
            ),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
                height: size.height * 0.5,
                child: ListWheelScrollerView(
                  items: items,
                )),
            DetailedPageButton(
              text: "next",
              onTap: () {
                Navigator.pushNamed(context, "/activity");
              },
              showBackButton: true,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
