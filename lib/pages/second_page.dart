import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final random = Random();
    final r = random.nextInt(255);
    final g = random.nextInt(255);
    final b = random.nextInt(255);

    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Hero(
            tag: 'main-hero',
            child: Material(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(r, g, b, 1.0),
                    border: Border.all(color: Colors.black54, width: 2.0)),
              ),
            ))),
      ),
    );
  }
}
