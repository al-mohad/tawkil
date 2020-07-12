import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tawkil/screens/hajj_screen.dart';
import 'package:tawkil/screens/home_screen.dart';
import 'package:tawkil/screens/messages_screen.dart';
import 'package:tawkil/screens/notification_screen.dart';
import 'package:tawkil/screens/profile_screen.dart';
import 'package:tawkil/utils/constants.dart';

class MainScreen extends StatefulWidget {
  static String id = 'homeScreen';
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final widgetOptions = [
    HomeScreen(),
    MessageScreen(),
    HajjScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidCommentAlt),
            title: Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.kaaba),
            title: Text('Hajj'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidBell),
            title: Text('Notif.'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userAlt),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kGreen,
        unselectedItemColor: kDarkGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}
