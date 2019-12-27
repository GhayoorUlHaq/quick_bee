import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      width: 100,
                      height: 100,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
