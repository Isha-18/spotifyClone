import 'package:flutter/material.dart';
import 'package:spotify_clone/navbar.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      Image(
        image: AssetImage(
          'assests/SpotifyLogo.png',
        ),
      ),
      Text('Millions of Songs',
          style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
      Text('Free on Spotify.',
          style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
      Container(
        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
      ),
      ElevatedButton(
          onPressed: () => {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                ),
                ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 98, 255, 103)),
                )
              },
          child: Text('Sign up for free',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontFamily: 'assests/Roboto/Roboto-Light.ttf')),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.fromLTRB(135, 18, 135, 18)),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 49, 217, 66)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45.0),
                      side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)))))),
      ElevatedButton(
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.phone_android_rounded),
              Text(
                'Sign up with phone',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 15,
                ),
              ),
            ],
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.fromLTRB(125, 10, 125, 10)),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45.0),
                      side: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255)))))),
      ElevatedButton(
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.g_mobiledata_rounded),
              Text('Google',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
                      fontFamily: 'assests/Roboto/Roboto-Light.ttf')),
            ],
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.fromLTRB(125, 10, 125, 10)),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45.0),
                      side: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255)))))),
      ElevatedButton(
          onPressed: () => {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.facebook_rounded),
              Text('Facebook',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontFamily: 'assests/Roboto/Roboto-Light.ttf')),
            ],
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.fromLTRB(125, 10, 125, 10)),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45.0),
                      side: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255)))))),
      ElevatedButton(
          onPressed: () => {},
          child: Text('Log in',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                  fontFamily: 'assests/Roboto/Roboto-Light.ttf')),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.fromLTRB(125, 10, 125, 10)),
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 0, 0, 0)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color.fromARGB(255, 0, 0, 0)))))),
    ]));
  }
}
