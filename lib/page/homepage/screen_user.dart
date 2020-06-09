import 'package:flutter/material.dart';
import 'package:pemmob/page/src/my_image.dart';
import 'package:pemmob/page/src/my_image_screen.dart';
import 'package:pemmob/page/src/card_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("E-Identity"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => MyImageScreen())),
                child: Stack(
                  children: <Widget>[
                    Hero(
                      tag: myImage,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200.0),
                        child: Container(height: 200.0, child: myImage),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: InkWell(
                        onTap: () {/*Command for Pick Your Image */},
                        borderRadius: BorderRadius.circular(90.0),
                        child: Container(
                          height: 55.0,
                          width: 55.0,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(90.0),
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            size: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                "Hi, Admin",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    CardModel(
                      title: "Birtdate",
                      data: "199x - xx - 0x",
                      backgroundColor: Colors.lightBlueAccent,
                      icon: Icon(
                        Icons.cake,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(width: 12.0),
                    CardModel(
                      title: "Home",
                      data: "Indonesia",
                      backgroundColor: Colors.purpleAccent,
                      icon: Icon(
                        Icons.location_on,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    CardModel(
                      title: "Last Education",
                      data: "Bachelor Degree",
                      backgroundColor: Colors.lightGreenAccent,
                      icon: Icon(
                        Icons.school,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(width: 12.0),
                    CardModel(
                      title: "Mail",
                      data: "example@mail.com",
                      backgroundColor: Colors.redAccent,
                      icon: Icon(
                        Icons.mail,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}