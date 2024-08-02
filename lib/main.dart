import 'package:fitness_trackimg_app/models/screens/ActivityLevelScreen/ActivityLevelScreen.dart';
import 'package:fitness_trackimg_app/models/screens/GoalScreen/GoalScreen.dart';
import 'package:fitness_trackimg_app/models/screens/HomeScreen/Notifications.dart';
import 'package:fitness_trackimg_app/models/screens/HomeScreen/bottomNavigationbar.dart';
import 'package:fitness_trackimg_app/models/screens/HomeScreen/homeScreen.dart';
import 'package:fitness_trackimg_app/models/screens/Login%20Signup/ForgotPassword.dart';
import 'package:fitness_trackimg_app/models/screens/Login%20Signup/LoginSignup.dart';
import 'package:fitness_trackimg_app/models/screens/OnBoardingScreen.dart';
import 'package:fitness_trackimg_app/models/screens/ProfilePage/PrivacyPolicy.dart';
import 'package:fitness_trackimg_app/models/screens/ProfilePage/ProfilePage.dart';
import 'package:fitness_trackimg_app/models/screens/ProfilePage/SettingsPage.dart';
import 'package:fitness_trackimg_app/models/screens/WeightScreen/WeightScreen.dart';
import 'package:fitness_trackimg_app/models/screens/ageScreen/ageScreen.dart';
import 'package:fitness_trackimg_app/models/screens/genderScreen/genderScreen.dart';
import 'package:fitness_trackimg_app/models/screens/heightScreen/heightScreen.dart';
import 'package:fitness_trackimg_app/models/screens/workoutCategories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/onboarding": (context) => const OnBoardingScreen(),
        "/gender": (context) => const GenderPage(),
        "/age": (context) => const AgePage(),
        "/height": (context) => const heightPage(),
        "/weight": (context) => WeightPage(),
        "/activity": (context) => ActivityLevelPage(),
        "/goal": (context) => const GoalPage(),
        "/forgotpassword": (context) => const Forgotpassword(),
        "/login": (context) => const SignUp(),
        "/home": (context) => const HomePage(),
        "/notification": (context) => NotificationPage(),
        "/workoutCategories": (context) => WorkoutCategories(),
        "/bottomNavigationbar": (context) => HomepageNavbar(),
        "/profile": (context) => ProfilePage(),
        "/privacyPolicy": (context) => PrivacyPolicyPage(),
        "/settings" :(context) => SettingsPage(),
      },
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
