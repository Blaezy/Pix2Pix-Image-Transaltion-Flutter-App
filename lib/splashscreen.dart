import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:human_generator/home.dart';
import 'package:splashscreen/splashscreen.dart';

class MysplashScreen extends StatefulWidget {
  const MysplashScreen({Key? key}) : super(key: key);

  @override
  _MysplashScreenState createState() => _MysplashScreenState();
}

class _MysplashScreenState extends State<MysplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      navigateAfterSeconds: Homepage(),
      seconds: 2,
      title: Text("Human Face Genertaor",
          style: GoogleFonts.encodeSansSemiExpanded(
              fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white)),
      gradientBackground: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(138, 35, 135, 1.0),
            Color.fromRGBO(233, 64, 87, 1.0),
            Color.fromRGBO(242, 113, 33, 1.0)
          ]),
      loaderColor: Colors.white,
    );
  }
}
