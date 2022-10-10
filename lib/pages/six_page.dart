import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class SixPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('SixPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.blue.shade500,
            child: SizedBox(
              width: 300,
              child: TypewriterAnimatedTextKit(
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
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            child: Text(
              'Click here to learn more',
              style: TextStyle(
                  decoration: TextDecoration.underline, color: Colors.blue),
            ),
            onTap: () =>
                launch('https://pub.dev/packages/animated_text_kit#typewriter'),
          )
        ],
      ),
    );
  }
}
