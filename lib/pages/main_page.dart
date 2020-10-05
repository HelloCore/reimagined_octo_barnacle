import 'package:flutter/material.dart';
import 'package:reimagined_octo_barnacle/pages/second_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Container(
          child: ListView(
        children: [
          Hero(
            tag: 'hero-fade',
            child: Material(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          SecondPage(
                            tag: 'hero-fade',
                          ),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      }));
                },
                title: Text('Fade'),
              ),
            ),
          )
        ],
      )),
    );
  }
}
