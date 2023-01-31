import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

//void main() {
// runApp(const SignUpPage());
//}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Container(
          height: MediaQuery.of(context).size.height,
          //height: MediaQuery.of(context).orientation.portrait,
          width: MediaQuery.of(context).size.width,
          //10% of screen height
          //width: 600.0,

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
              )),

          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                          'assets/image.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  padding: EdgeInsets.all(10.0),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'FoodPie',
                              style: TextStyle(
                                  height: 0.4,
                                  fontSize: 40,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ]),
                      Text(
                        'Always Give Better Food Ever',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: Color.fromARGB(255, 253, 230, 26)),
                      ),
                    ]),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                    width: 300,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            child: Icon(Icons.person,
                                size: 25.0,
                                color: Color.fromARGB(255, 255, 71, 71))),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300,
                                fontSize: 20.0,
                                height: 0.5,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "First Name",
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            textAlign: TextAlign.center,
                            scrollPadding: EdgeInsets.all(0.0),
                            autofocus: true,
                          ),
                        ))
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                    width: 300,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            child: Icon(Icons.person,
                                size: 25.0,
                                color: Color.fromARGB(255, 255, 71, 71))),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300,
                                fontSize: 10.0,
                                height: 0.5,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Last Name",
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            textAlign: TextAlign.center,
                            scrollPadding: EdgeInsets.all(0.0),
                            autofocus: true,
                          ),
                        ))
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                    width: 300,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            child: Icon(Icons.email,
                                size: 25.0,
                                color: Color.fromARGB(255, 255, 71, 71))),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300,
                                fontSize: 20.0,
                                height: 0.5,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email Address",
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            textAlign: TextAlign.center,
                            scrollPadding: EdgeInsets.all(0.0),
                            autofocus: true,
                          ),
                        ))
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                    width: 300,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            child: Icon(Icons.person,
                                size: 25.0,
                                color: Color.fromARGB(255, 255, 71, 71))),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300,
                                fontSize: 20.0,
                                height: 0.5,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "User Name",
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            textAlign: TextAlign.center,
                            scrollPadding: EdgeInsets.all(0.0),
                            autofocus: true,
                          ),
                        ))
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                    width: 300,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            child: Icon(Icons.key_off_outlined,
                                size: 25.0,
                                color: Color.fromARGB(255, 255, 71, 71))),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300,
                                fontSize: 20.0,
                                height: 0.3,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.0,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            textAlign: TextAlign.center,
                            scrollPadding: EdgeInsets.all(20.0),
                            autofocus: true,
                          ),
                        ))
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                    width: 300,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                            radius: 18,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            child: Icon(Icons.password_rounded,
                                size: 25.0,
                                color: Color.fromARGB(255, 255, 71, 71))),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w300,
                                fontSize: 20.0,
                                height: 0.3,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.0,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            textAlign: TextAlign.center,
                            scrollPadding: EdgeInsets.all(20.0),
                            autofocus: true,
                          ),
                        ))
                      ],
                    )),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  child: SizedBox(
                    height: 40, //height of button
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   new MaterialPageRoute(
                          //     builder: (context) => new HomePage()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 248, 248, 248),
                            elevation: 3,
                            padding: EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Color.fromARGB(255, 250, 74, 112),
                          ),
                        )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 20)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          primary: Color.fromARGB(157, 255, 255, 255),
                          elevation: 3,
                          padding: EdgeInsets.all(0),
                        ),
                        child: Image.asset('assets/facebook.png',
                            width: 30, height: 40),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Color.fromARGB(157, 255, 255, 255),
                          elevation: 3,
                          padding: EdgeInsets.all(0),
                        ),
                        child: Image.asset('assets/twitter.png',
                            width: 30, height: 40),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Color.fromARGB(157, 255, 255, 255),
                          elevation: 3,
                          padding: EdgeInsets.all(0),
                        ),
                        child: Image.asset('assets/instagram.png',
                            width: 30, height: 40),
                      ),
                    ]),
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new MyApp()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(0, 248, 248, 248),
                          padding: EdgeInsets.all(0),
                          elevation: 0),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 255, 255),
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ]),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Container(
                  child: Text(
                    "Contact for Support",
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
