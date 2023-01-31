import 'dart:html';
import 'package:flutter/material.dart';

//void main() {
// runApp(const HomePage());

//}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        //height: MediaQuery.of(context).orientation.portrait,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.1,
              0.5,
              0.7,
            ],
            colors: [
              Color.fromARGB(255, 255, 132, 101),
              Color.fromARGB(255, 253, 116, 123),
              Color.fromARGB(255, 250, 74, 112),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(35),
                ),
                gradient: new LinearGradient(
                  colors: [
                    Color.fromARGB(59, 250, 248, 247),
                    Color.fromARGB(59, 217, 248, 252)
                  ],
                ),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/logo.jpg',
                    ),
                    fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
