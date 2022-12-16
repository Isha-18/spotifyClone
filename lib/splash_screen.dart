import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/log_in_page.dart';
import 'package:spotify_clone/main.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 2500,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          splash: Image(
            image: AssetImage('assests/Spotify.png'),
            alignment: Alignment.center,
            height: 100,
            width: 100,
          ),
          nextScreen: login()),
    );
  }
}
