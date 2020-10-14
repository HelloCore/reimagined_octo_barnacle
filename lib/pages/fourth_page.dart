import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('ThirdPage'),
      ),
      body: Center(
        child: Container(
          height: 250,
          color: Colors.greenAccent,
          child: SizedBox(
            width: 300,
            child: FadeAnimatedTextKit(
              text: ['Hello', 'Hello!!', 'Hello Hello Core!!!'],
              textStyle: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
              alignment: AlignmentDirectional.topStart,
            ),
          ),
        ),
      ),
    );
  }
}
