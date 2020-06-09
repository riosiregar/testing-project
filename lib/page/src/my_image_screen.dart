import 'package:flutter/material.dart';
import 'my_image.dart';

class MyImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: myImage,
        child: Center(
          child: myImage,
        ),
      ),
    );
  }
}