import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tawkil/screens/chat_screen.dart';
import 'package:tawkil/utils/constants.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  _gotoChatRoom({BuildContext context}) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (_) => ChatScreen(),
      ),
    );
  }

  bool isSearchAppBar = false;

  _toggleAppBar() {
    setState(() {
      isSearchAppBar = !isSearchAppBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: isSearchAppBar
            ? TextFormField(
                decoration: InputDecoration(hintText: 'Search user..'),
              )
            : Text(
                'Messages',
                style: kBigText.copyWith(fontSize: 28, color: kGreen),
              ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.search,
                color: isSearchAppBar ? kGreen : Colors.grey,
              ),
              onPressed: _toggleAppBar),
          IconButton(
              icon: Icon(
                FontAwesomeIcons.plusCircle,
                color: isSearchAppBar ? kGreen : Colors.grey,
              ),
              onPressed: null),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 34,
          itemBuilder: (_, index) {
            return Container(
              decoration: BoxDecoration(
                color: kLighterGrey.withAlpha(100),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
              child: ListTile(
                onTap: () => _gotoChatRoom(context: context),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.3),
                          offset: Offset(0, 5),
                          blurRadius: 25)
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/man.png'),
                        ),
                      ),
                      true
                          ? Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                title: Text('Abu Jazz Aziz'),
                subtitle: Text(
                    'Hey...it is totally safe, but you can talk to the management for more info...'),
                trailing: Container(
                  width: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          true
                              ? Icon(
                                  Icons.check,
                                  size: 15,
                                )
                              : Container(height: 15, width: 15),
                          Text("10:12")
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      true
                          ? Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: kGreen,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                "8",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          : Container(
                              height: 25,
                              width: 25,
                            ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
