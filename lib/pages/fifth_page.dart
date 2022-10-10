import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class FifthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text('FifthPage'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.green.shade500,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(
                width: 250.0,
                child: TyperAnimatedTextKit(
                  text: [
                    "It is not enough to do your best,",
                    "you must know what to do,",
                    "and then do your best",
                    "- W.Edwards Deming"
                  ],
                  textStyle: TextStyle(fontSize: 30.0, color: Colors.white),
                  textAlign: TextAlign.start,
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
                launch('https://pub.dev/packages/animated_text_kit#typer'),
          )
        ],
      ),
    );
  }
}
