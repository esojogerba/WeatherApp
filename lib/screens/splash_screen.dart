import 'package:flutter/material.dart';
import 'dart:async';

import 'package:weather_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, navigateToDeviceScreen);
  }

  navigateToDeviceScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6FEFF),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [const Color(0xFFA7BFE8), const Color(0xFF6190E8)],
          )),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Weather App",
                key: Key('weather-app-text'),
                style: GoogleFonts.montserrat(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF)),
              ),
              Text("For your care.",
                  style: GoogleFonts.montserrat(
                      fontSize: 18, color: Color(0xFFFFFFFF)))
            ],
          ))),
    );
  }
}
