import "package:fitness_trackimg_app/models/DetailedPageButton.dart";
import "package:fitness_trackimg_app/models/DetailedPageTitle.dart";
import 'package:fitness_trackimg_app/models/screens/ListWheelScrollerView.dart';
import "package:flutter/material.dart";

class heightPage extends StatefulWidget {
  const heightPage({super.key});

  @override
  State<heightPage> createState() => _AgePageState();
}

class _AgePageState extends State<heightPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (int i = 1; i < 200; i++) {
      items.add(i.toString());
    }
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
              title: "what is your height ? ",
              text: "This will help us to create personalized for you",
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
                Navigator.pushNamed(context, "/goal");
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
