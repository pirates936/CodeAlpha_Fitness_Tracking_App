import "package:fitness_trackimg_app/Provider/user_provider.dart";
import "package:fitness_trackimg_app/models/DetailedPageButton.dart";
import "package:fitness_trackimg_app/models/DetailedPageTitle.dart";
import 'package:fitness_trackimg_app/models/screens/ListWheelScrollerView.dart';
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class AgePage extends StatefulWidget {
  const AgePage({super.key});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (int i = 1; i < 100; i++) {
      items.add(i.toString());
    }
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
          child: Consumer<UserProvider>(
            builder: (context, UserProvider, _) {
              return Container(
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
                      title: "How Old Are You ? ",
                      text:
                          "This will help us to create personalized content for you",
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
                      text: "Next",
                      onTap: () {
                        UserProvider.setAge(int.parse(items[UserProvider.age]));
                        Navigator.pushNamed(context, "/weight");
                      },
                      showBackButton: true,
                      onBackTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
