import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class EigthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('Eigth'),
      ),
      body: Center(
        child: Container(
          height: 250,
          color: Colors.blue.shade500,
          child: SizedBox(
            width: 300,
            child: ColorizeAnimatedTextKit(
              text: [
                "Discipline is the best tool",
                "Design first, then code",
                "Do not patch bugs out, rewrite them",
                "Do not test bugs out, design them out"
              ],
              textStyle: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              colors: [
                Colors.redAccent,
                Colors.greenAccent,
                Colors.blueAccent,
                Colors.yellowAccent,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
