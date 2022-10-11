import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('FourthPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              color: Colors.greenAccent,
              child: SizedBox(
                width: 300,
                child: Hero(
                  tag: 'main-hero',
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
                  launch('https://pub.dev/packages/animated_text_kit#fade'),
            )
          ],
        ),
      ),
    );
  }
}
