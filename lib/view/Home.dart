import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.red),
      ),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  Widget _build_button(Color color, String title) {
    return (new Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
          boxShadow: [
            BoxShadow(
              color: color,
              blurRadius: 1.0, // has the effect of softening the shadow
              spreadRadius: 0, // has the effect of extending the shadow
              offset: Offset(
                0.1, // horizontal, move right 10
                0.1, // vertical, move down 10
              ),
            )
          ]),
      child: new Center(
        child: new Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    ));
  }

  Widget _buildImage(String image, double height, double width) {
    return new Container(
      child: new ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.asset(
          image,
          height: height,
          width: width,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return new ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              // Title Container
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      child: new Text(
                        "Explore",
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              // 1st row
              new Container(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: Row(
                  children: <Widget>[
                    new Container(
                      width: width * 0.25,
                      height: width * 0.25,
                      decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(20.0),
                          color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red,
                              blurRadius:
                                  3.0, // has the effect of softening the shadow
                              spreadRadius:
                                  0, // has the effect of extending the shadow
                              offset: Offset(
                                0.1, // horizontal, move right 10
                                0.1, // vertical, move down 10
                              ),
                            )
                          ]),
                      alignment: Alignment.topLeft,
                      child: Center(
                        child: Icon(
                          Icons.pool,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.only(left: 5.0),
                      height: width * 0.25,
                      width: width * 0.68,
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            margin: EdgeInsets.only(left: 5),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                _build_button(Colors.red[200], "Swiming"),
                                _build_button(Colors.red[400], "Badminton"),
                              ],
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.only(top: 5, left: 5),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                _build_button(Colors.red[400], "Football"),
                                _build_button(Colors.red[200], "Circket"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // 2nd row
              new Container(
                margin: EdgeInsets.only(top: 15),
                height: 100,
                width: width,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildImage("images/1.jpeg", 100, 150),
                    _buildImage("images/2.jpg", 100, 170),
                  ],
                ),
              ),
              // 3rd row
              new Container(
                child: Column(
                  children: <Widget>[
                    new Center(
                      child: _buildImage(
                        'images/4.jpg', 350, 350),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
