import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ElevenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eleven'),
      ),
      body: Container(
        child: Center(
          child: Column(children: [
            SizedBox(
              width: 350.0,
              child: Hero(
                tag: 'main-hero',
                child: Material(
                  child: TextLiquidFill(
                    text: 'LIQUIDY',
                    waveColor: Colors.blueAccent,
                    boxBackgroundColor: Colors.redAccent,
                    textStyle: TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                    ),
                    boxHeight: 300.0,
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
              onTap: () => launch(
                  'https://pub.dev/packages/animated_text_kit#textliquidfill'),
            )
          ]),
        ),
      ),
    );
  }
}
