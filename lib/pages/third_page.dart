import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          title: Text('ThirdPage'),
        ),
        body: Column(
          children: [
            Hero(
              tag: 'main-hero',
              flightShuttleBuilder: ((flightContext, animation, flightDirection,
                  fromHeroContext, toHeroContext) {
                return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: toHeroContext.widget);
              }),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                color: Colors.orange.shade500,
                child: _createTextAnimationRotate(), //
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
                  launch('https://pub.dev/packages/animated_text_kit#rotate'),
            )
          ],
        ));
  }

  Widget _createTextAnimationRotate() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 20.0),
        Text(
          'BE',
          style: TextStyle(
              fontSize: 43.0, fontFamily: 'Horizon', color: Colors.white),
        ),
        SizedBox(width: 20.0),
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
