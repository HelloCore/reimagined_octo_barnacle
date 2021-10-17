import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class NinethPage extends StatefulWidget {
  const NinethPage({Key key}) : super(key: key);

  @override
  _NinethPageState createState() => _NinethPageState();
}

class _NinethPageState extends State<NinethPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nine'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        child: _scale(),
      ),
    );
  }

  Widget _scale() {
    return SizedBox(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 50.0,
          fontFamily: 'SF',
        ),
        child: Center(
          child: ScaleAnimatedTextKit(
            repeatForever: true,
            text: [
              'Stay Hungry',
              'Stay Foolish',
            ],
            textStyle: TextStyle(
              color: Colors.black,
            ),
            duration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
