import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:reimagined_octo_barnacle/pages/second_page.dart';
import 'package:reimagined_octo_barnacle/pages/third_page.dart';

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
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  SecondPage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return SharedAxisTransition(
                              animation: animation,
                              secondaryAnimation: secondaryAnimation,
                              child: child,
                              transitionType:
                                  SharedAxisTransitionType.horizontal,
                            );
                          }));
                    },
                    title: Text('SharedAxisTransitionType.horizontal'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  SecondPage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return SharedAxisTransition(
                              animation: animation,
                              secondaryAnimation: secondaryAnimation,
                              child: child,
                              transitionType: SharedAxisTransitionType.scaled,
                            );
                          }));
                    },
                    title: Text('SharedAxisTransitionType.scaled'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  SecondPage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return SharedAxisTransition(
                              animation: animation,
                              secondaryAnimation: secondaryAnimation,
                              child: child,
                              transitionType: SharedAxisTransitionType.vertical,
                            );
                          }));
                    },
                    title: Text('SharedAxisTransitionType.vertical'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  ThirdPage(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            return SharedAxisTransition(
                              animation: animation,
                              secondaryAnimation: secondaryAnimation,
                              child: child,
                              transitionType: SharedAxisTransitionType.vertical,
                            );
                          }));
                    },
                    title: Text('FlutterTextAnimation.Rotate'),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
