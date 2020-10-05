import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String tag;

  const SecondPage({Key key, @required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Hero(tag: tag, child: Text('Second Page')),
      ),
    );
  }
}
