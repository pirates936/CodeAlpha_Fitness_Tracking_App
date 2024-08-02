import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: (index){setState(() {
                isLast = index ==2;
              });
                },
              children: [
                _buildPageIndicator(
                    text: "Meet your coach, \nstart your journey",
                    imageAsset: "assets/background-1.jpeg"),
                _buildPageIndicator(
                    text: "create a workout plan \nto stay fit",
                    imageAsset: "assets/background-2.jpeg"),
                _buildPageIndicator(
                    text: "actions is the \nkey to all success",
                    imageAsset: "assets/background-3.jpeg"),
              ],
            ),
            isLast
            ? const SizedBox.shrink()
            : Positioned(
              top: size.height*0.05,
                right: size.width*0.05,
                child: TextButton(
              onPressed: (){
                controller.animateToPage(2, duration: const Duration(microseconds: 300), curve: Curves.ease);
              },
              child: const Text(
                "skip",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),

            isLast
            ? Positioned(
              left: size.width * 0.25,
              right: size.width * 0.25,
              bottom: size.height * 0.07,
             child: Container(
               padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
               width: size.width * 0.5,
               decoration: BoxDecoration(
                 color: Color(0xFFFF1744),
                 borderRadius: BorderRadius.circular(30),
               ),
               child: Row(
                 children: [
                   TextButton(
                         onPressed: (){
                           Navigator.pushNamed(context, "/gender");
                         },
                         child: const Text(
                           "Get Started",
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                   ),
                   const Icon(
                     Icons.arrow_forward,
                     color: Colors.black,
                   )
                 ],
               ),
             ),
            )
            : SizedBox.shrink(),
            Positioned(
              bottom: size.height*0.03,
                left: size.width*0.45,
                child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Colors.grey,
                activeDotColor: Color(0xFFFF1744),
              )
            ))
          ],
        ));
  }

  Widget _buildPageIndicator(
      {required String text, required String imageAsset}) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          imageAsset,
          height: size.height * 0.6,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
            bottom: 0,
            child: Container(
              height: size.height * 0.4,
              width: size.width,
              child: Center(
                child: Text(
                  text.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ))
      ],
    );
  }
}
