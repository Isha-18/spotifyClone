import 'package:flutter/material.dart';
import 'package:spotify_clone/log_in_page.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key}) : super(key: null);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    const homescreen(),
    const search(),
    const libraryy()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_music_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            label: 'Your Library',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.workspace_premium_outlined),
          //   label: 'Premium',
          // ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 255, 255, 255),
        iconSize: 27,
        onTap: _onItemTapped,
      ),
    );
  }
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return
        //  MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   home: navigationbar(),
        // );
        Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 53, 52, 52)
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // IconButton(
              //   onPressed: () => {
              //     Navigator.pushReplacement(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => homescreen(),
              //       ),
              //     ),
              //   },
              //   icon: Icon(Icons.arrow_back),
              // ),
              Text('Made for you',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 27,
                      fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
              Icon(
                Icons.notifications_active_outlined,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              Icon(
                Icons.access_time_filled_outlined,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              Icon(
                Icons.settings,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
          Image(
            image: AssetImage('assests/topsection.png'),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(35, 0, 0, 5),
              child: Text('Trending Now',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 27,
                      fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
            ),
          ),
          Container(
            height: 250,
            width: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(children: <Widget>[
                  Padding(padding: EdgeInsets.all(15)),
                  Image(
                    image: AssetImage('assests/trendingnow/Believer.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/hawai.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/Believer.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/hawai.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/Believer.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/hawai.png'),
                  ),
                ])
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 20),
              child: Text('Top picks for you',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 27,
                      fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
            ),
          ),
          Container(
            height: 250,
            width: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(children: <Widget>[
                  Padding(padding: EdgeInsets.all(15)),
                  Image(
                    image: AssetImage('assests/trendingnow/Believer.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/hawai.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/Believer.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/hawai.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/Believer.png'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Image(
                    image: AssetImage('assests/trendingnow/hawai.png'),
                  ),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Text('Search',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
          ),
          Row(children: <Widget>[
            Expanded(
              flex: 15,
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                height: 50,
                width: 90,
                margin: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    icon: Icon(
                      Icons.search_outlined,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 40,
                    ),
                    hintText: 'Artists, songs or podcasts',
                    hintStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Icon(
                Icons.mic_none,
                color: Colors.white,
                size: 25,
              ),
            ),
          ]),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Text('Your top genres',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Colors.purple,
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Pop',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Color.fromARGB(255, 151, 38, 38),
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Bollywood',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Text('Browse all',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Color.fromARGB(255, 251, 108, 20),
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Podcasts',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Color.fromARGB(255, 61, 22, 56),
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('New Releases',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Color.fromARGB(255, 62, 205, 164),
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Charts',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Color.fromARGB(255, 251, 63, 63),
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Concerts',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Color.fromARGB(255, 213, 231, 49),
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Made for You',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Color.fromARGB(255, 38, 85, 151),
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('At Home',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Color.fromARGB(255, 122, 156, 8),
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Live Events',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                color: Color.fromARGB(255, 255, 112, 203),
                elevation: 10,
                child: Container(
                  height: 130,
                  width: 190,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Chill Mood',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                              fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class libraryy extends StatelessWidget {
  const libraryy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 30, 29, 29),
            Color.fromARGB(255, 65, 63, 63),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child: Text('Your Library',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'assests/Roboto/Roboto-Bold.ttf')),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/believerr.png'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          'Alone',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Row(children: <Widget>[
                          Image(
                            image: AssetImage('assests/playlist/Lyrics.png'),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            'Alan Walker',
                            style: TextStyle(
                                color: Color.fromARGB(255, 142, 138, 138)),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/LetMeLoveYou.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Let me love you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(children: <Widget>[
                        Image(
                          image: AssetImage('assests/playlist/Lyrics.png'),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Justin Bieber feat DJ Snake',
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 138, 138)),
                        ),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/Ignite.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Ignite',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(children: <Widget>[
                        Image(
                          image: AssetImage('assests/playlist/Lyrics.png'),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Alan Walker',
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 138, 138)),
                        ),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/TakiTaki.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Taki Taki',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(children: <Widget>[
                        Image(
                          image: AssetImage('assests/playlist/Lyrics.png'),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'DJ Snake feat Selena Gomez',
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 138, 138)),
                        ),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/believerr.png'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          'Alone',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Row(children: <Widget>[
                          Image(
                            image: AssetImage('assests/playlist/Lyrics.png'),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            'Alan Walker',
                            style: TextStyle(
                                color: Color.fromARGB(255, 142, 138, 138)),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/LetMeLoveYou.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Let me love you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(children: <Widget>[
                        Image(
                          image: AssetImage('assests/playlist/Lyrics.png'),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Justin Bieber feat DJ Snake',
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 138, 138)),
                        ),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/Ignite.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Ignite',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(children: <Widget>[
                        Image(
                          image: AssetImage('assests/playlist/Lyrics.png'),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Alan Walker',
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 138, 138)),
                        ),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/TakiTaki.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Taki Taki',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(children: <Widget>[
                        Image(
                          image: AssetImage('assests/playlist/Lyrics.png'),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'DJ Snake feat Selena Gomez',
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 138, 138)),
                        ),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/believerr.png'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          'Alone',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Row(children: <Widget>[
                          Image(
                            image: AssetImage('assests/playlist/Lyrics.png'),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Text(
                            'Alan Walker',
                            style: TextStyle(
                                color: Color.fromARGB(255, 142, 138, 138)),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/LetMeLoveYou.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Let me love you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(children: <Widget>[
                        Image(
                          image: AssetImage('assests/playlist/Lyrics.png'),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Justin Bieber feat DJ Snake',
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 138, 138)),
                        ),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/Ignite.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Ignite',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(children: <Widget>[
                        Image(
                          image: AssetImage('assests/playlist/Lyrics.png'),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Alan Walker',
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 138, 138)),
                        ),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assests/playlist/TakiTaki.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Taki Taki',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Row(children: <Widget>[
                        Image(
                          image: AssetImage('assests/playlist/Lyrics.png'),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'DJ Snake feat Selena Gomez',
                          style: TextStyle(
                              color: Color.fromARGB(255, 142, 138, 138)),
                        ),
                      ]),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
