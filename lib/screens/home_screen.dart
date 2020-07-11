import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tawkil/components/home_header.dart';
import 'package:tawkil/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'homeScreen';
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  TabController _tabController;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HomeHeader(),
          Expanded(
            flex: 4,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      RotatedBox(
                        quarterTurns: 3,
                        child: TabBar(
                          unselectedLabelColor: kDarkGrey,
                          labelColor: kLightGreen,
                          indicatorColor: Colors.transparent,
                          labelPadding: EdgeInsets.zero,
                          indicatorPadding: EdgeInsets.zero,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: <Widget>[
                            Tab(text: 'Top Rated'),
                            Tab(text: 'Experience'),
                            Tab(text: 'Female'),
                          ],
                          controller: _tabController,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: TabBarView(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 23,
                          itemBuilder: (_, index) {
                            return ListTile(
                              leading: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              title: Text('Jazz Abu Aziz'),
                            );
                          },
                        ),
                      ),
                      Text("This is Experienced Tab View"),
                      Text("This is Female Tab View"),
                    ],
                    controller: _tabController,
                  ),
                ),
              ],
            ),
          ),
        ],
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
