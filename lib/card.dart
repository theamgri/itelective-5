import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
//import 'package:flutter_application_1/signup.dart';

void main() {
  runApp(const Card());
}

class Card extends StatelessWidget {
  const Card({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.0, //10% of screen height
      //width: 200.0,
      //color: Color.fromARGB(255, 119, 73, 204),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/profpic.jpg'), fit: BoxFit.fill),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              child: Text(
                'Althea Maghari',
                style: TextStyle(
                  fontFamily: 'NotoSans',
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_pin,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  'Davao City',
                  style: TextStyle(
                    fontFamily: 'NotoSans',
                    fontWeight: FontWeight.w100,
                    fontSize: 17,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15.0),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.person,
                        size: 45,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Icon(
                        Icons.people,
                        size: 45,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Icon(
                        Icons.calendar_month,
                        size: 45,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'FOLLOWERS',
                          style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Text(
                          'FOLLOWING',
                          style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Text(
                          'JOINED YEAR',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'NotoSans',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ]),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '162',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Text(
                          '19.3M',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        Text(
                          '2010',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ]),
                ]),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              child: SizedBox(
                height: 35, //height of button
                width: 250,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 245, 205, 27),
                        elevation: 3,
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        )),
                    child: const Text(
                      'Start Following',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromARGB(255, 105, 84, 21),
                      ),
                    )),
              ),
            ),
          ]),
    );
  }
}
