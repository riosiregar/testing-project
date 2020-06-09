import 'package:flutter/material.dart';

class StackedIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                new Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFF000000)),
                  child: new Icon(
                    Icons.local_offer,
                    color: Colors.blue,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFBF00FF)),
                  child: new Icon(Icons.home, color: Colors.black),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFFFD700)),
                  child: new Icon(Icons.card_giftcard, color: Colors.yellow),
                ),
                new Container(
                  margin: new EdgeInsets.only(bottom: 50.0, top: 40.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFF8F00FF),
                  ),
                  child: new Icon(Icons.camera, color: Colors.blue),
                ),
              ],
            );
        
      
  }
}