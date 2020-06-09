import 'package:flutter/material.dart';

class CardModel extends StatelessWidget {
  final Widget icon;
  final Color backgroundColor;
  final String title;
  final String data;
  CardModel(
      {@required this.title,
      @required this.icon,
      this.backgroundColor,
      this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: InkWell(
          onTap: () => Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(data),
              duration: Duration(milliseconds: 1000),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icon,
              SizedBox(height: 12.0),
              Text(
                title,
                style: TextStyle(fontSize: 18.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}