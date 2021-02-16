import 'package:flutter/material.dart';
import 'package:schoolwork/placeholder_widget.dart';
import 'package:schoolwork/school.dart';
import 'package:schoolwork/schoolchoose.dart';
import 'package:schoolwork/schooldevtimeline.dart';
import 'package:schoolwork/schoolpersonal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Conversations()),
    PlaceholderWidget(Home()),
    PlaceholderWidget(SchoolDevTimeline()),
    PlaceholderWidget(Profile()),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9C9ED2),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/message.png'),
              width: 30,
              height: 30,
            ),
            // ignore: deprecated_member_use
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/home.png'),
              width: 28,
              height: 28,
            ),
            title: Text(
              '',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Image(
              image: AssetImage('assets/images/school.png'),
              width: 70,
              height: 70,
            ),

            activeIcon: Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage('assets/images/school.png'),
                width: 70,
                height: 70,
              ),
            ),
            // // ignore: deprecated_member_use
            title: Text(
              '',
              style: TextStyle(color: Colors.black38),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/images/profile.png'),
              width: 28,
              height: 28,
            ),
            // ignore: deprecated_member_use
            title: Text(''),
          )
        ],
      ),
    );
  }
}

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
