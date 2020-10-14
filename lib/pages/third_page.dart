import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          title: Text('ThirdPage'),
        ),
        body: Center(
          child: Hero(
            tag: 'main-hero',
            child: Container(
              width: 350,
              height: 300,
              color: Colors.orange.shade500,
              child: _createTextAnimationRotate(),
            ),
          ),
        ));
  }

  Widget _createTextAnimationRotate() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 20.0, height: 100.0),
        Text(
          'BE',
          style: TextStyle(
              fontSize: 43.0, fontFamily: 'Horizon', color: Colors.white),
        ),
        SizedBox(width: 20.0, height: 100.0),
        RotateAnimatedTextKit(
          text: ['creative', 'awesome', 'different'],
          textStyle: TextStyle(
              fontSize: 40.0, fontFamily: 'Horizon', color: Colors.white),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
