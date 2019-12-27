import "package:flutter/material.dart";

class Splash extends StatelessWidget {
  Widget _container(Color color, EdgeInsets margin, icon) {
    return Container(
      margin: margin,
      height: 60.0,
      width: 60.0,
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(50.0), color: color),
      child: new Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                _container(
                  Colors.orange[200],
                  EdgeInsets.only(right: 50.0),
                  Icons.place,
                ),
                _container(
                  Colors.orange[400],
                  EdgeInsets.only(top: 70.0),
                  Icons.tag_faces,
                ),
                _container(
                  Colors.orange[700],
                  EdgeInsets.only(left: 50.0),
                  Icons.rate_review,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(top: 50),
                  child: new Text(
                    "Quick Bee",
                    style: new TextStyle(
                      color: Colors.orange[700],
                      fontSize: 30.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
