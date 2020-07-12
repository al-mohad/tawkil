import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tawkil/utils/constants.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
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
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jazz Abu Aziz",
                  style: TextStyle(fontSize: 14),
                  overflow: TextOverflow.fade,
                ),
                Text(
                  "Online",
                  style: TextStyle(fontSize: 12, color: kGreen),
                ),
              ],
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.phoneAlt, size: 18.0),
              onPressed: null),
          IconButton(
              icon: Icon(FontAwesomeIcons.video, size: 18.0), onPressed: null),
          IconButton(
              icon: Icon(FontAwesomeIcons.ellipsisV, size: 18.0),
              onPressed: null)
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            // color: Colors.pinkAccent,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.3),
                          offset: Offset(0, 5),
                          blurRadius: 25)
                    ],
                  ),
                  child: Positioned.fill(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/man.png'),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jazz Abu Aziz",
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * .6),
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xfff9f9f9),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: Text(
                        "Hi mate... i will like to know what is your final decision by the end of the day. Thank you!",
                        style: Theme.of(context).textTheme.body1.apply(
                              color: Colors.black87,
                            ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Text(
                  "9:44 PM",
                  style: Theme.of(context)
                      .textTheme
                      .body2
                      .apply(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            // color: Colors.pinkAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "11:44 PM",
                  style: Theme.of(context)
                      .textTheme
                      .body2
                      .apply(color: Colors.grey),
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * .6),
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: kLighterGreen,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: Text(
                        "Ok! No problem, thank you.",
                        style: Theme.of(context).textTheme.body1.apply(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(15.0),
        height: 61,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.face), onPressed: () {}),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Type Something...",
                            border: InputBorder.none),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.photo_camera),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.attach_file),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 15),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(color: kGreen, shape: BoxShape.circle),
              child: InkWell(
                child: Icon(
                  Icons.keyboard_voice,
                  color: Colors.white,
                ),
                onLongPress: () {
                  setState(() {
                    // _showBottom = true;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
