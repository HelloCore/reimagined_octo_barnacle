import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TenPage extends StatefulWidget {
  @override
  State<TenPage> createState() => _TenPageState();
}

class _TenPageState extends State<TenPage> {
  bool animated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ten'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Flutter'),
                  Text(' is '),
                  Text('awesome '),
                ],
              ),
              style: animated
                  ? TextStyle(
                      color: Colors.blue,
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 4,
                    )
                  : TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w100,
                      fontSize: 14,
                      letterSpacing: 1,
                    ),
              duration: Duration(milliseconds: 1000),
              curve: Curves.elasticOut,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('Animate'),
              onPressed: () {
                setState(() {
                  animated = !animated;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
