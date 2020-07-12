import 'package:flutter/material.dart';
import 'package:tawkil/components/home_header.dart';
import 'package:tawkil/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _active = 2;
  List<String> _categories = ['Female', 'Experienced', 'Top Rated'];
//  Function _categoriesOption = <Function>[
//    _female(){},
//    _experienced(){},
//  ];

  Function _fetchCategoryCanditate(int currentCategory) {
    if (currentCategory == 2) {}
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HomeHeader(),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ListView.builder(
                        itemCount: _categories.length,
                        itemBuilder: (context, i) => GestureDetector(
                          onTap: () {
                            setState(() {
                              _active = i;
                            });
                            _fetchCategoryCanditate(_active);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(vertical: 9),
                                child: RotatedBox(
                                  quarterTurns: -1,
                                  child: Text(
                                    "${_categories[i]}",
                                    style: TextStyle(
                                        color:
                                            _active == i ? kGreen : kDarkGrey,
                                        fontFamily: 'Product Sans'),
                                  ),
                                ),
                              ),
                              if (_active == i) SizedBox(width: 3),
                              if (_active == i)
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    color: kGreen,
                                    shape: BoxShape.circle,
                                  ),
                                )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                    ),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: 23,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 100,
                        margin:
                            EdgeInsets.only(left: 0.0, top: 5.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: kLighterGrey, width: 2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 65,
                                width: 35,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: kLighterGrey,
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                      image: AssetImage('assets/man.png'),
                                      fit: BoxFit.contain),
                                ),
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Jazz Abu Aziz',
                                      style: kSmallText.copyWith(
                                          color: kDarkerGrey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.star, color: kGreen),
                                        Icon(Icons.star, color: kGreen),
                                        Icon(Icons.star, color: kGreen),
                                        Icon(Icons.star, color: kGreen),
                                        Icon(Icons.star_half, color: kGreen),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class VerticalCategories extends StatefulWidget {
  const VerticalCategories({
    Key key,
  }) : super(key: key);

  @override
  _VerticalCategoriesState createState() => _VerticalCategoriesState();
}

class _VerticalCategoriesState extends State {
  int _active = 0;
  List<String> _categories = ['Female', 'Experienced', 'Top Rated'];
  final _categoriesOption = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _categories.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          setState(() {
            _active = i;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 9),
              child: RotatedBox(
                quarterTurns: -1,
                child: Text(
                  "${_categories[i]}",
                  style: TextStyle(
                      color: _active == i ? kGreen : kDarkGrey,
                      fontFamily: 'Product Sans'),
                ),
              ),
            ),
            if (_active == i) SizedBox(width: 3),
            if (_active == i)
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: kGreen,
                  shape: BoxShape.circle,
                ),
              )
          ],
        ),
      ),
    );
  }
}
