import 'package:bondee/pages/profile_screens.dart/create_profile_screen.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 10),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateProfile()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorp1,
        body: Container(
          child: Center(
            child: Image.asset("assets/images/splashscreen.png"),
          ),
        ));
  }
}
