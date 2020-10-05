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
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Hero(
                tag: 'main-hero',
                child: Material(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.greenAccent,
                  ),
                ))),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  SecondPage(),
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
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
