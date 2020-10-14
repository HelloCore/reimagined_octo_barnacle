import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('ThirdPage'),
        ),
        body: Center(
          child: Hero(
            tag: 'main-hero',
            child: Container(),
          ),
        ));
  }
}
