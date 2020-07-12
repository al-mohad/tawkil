import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tawkil/screens/chat_screen.dart';
import 'package:tawkil/utils/constants.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key key}) : super(key: key);

  _gotoChatRoom({BuildContext context}) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (_) => ChatScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Messages',
          style: kBigText.copyWith(fontSize: 28, color: kGreen),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.search), onPressed: null),
          IconButton(icon: Icon(FontAwesomeIcons.plusCircle), onPressed: null),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 34,
          itemBuilder: (_, index) {
            return Container(
              margin: const EdgeInsets.all(8.0),
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
