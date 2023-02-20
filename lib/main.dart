import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 119, 73, 204),
      //appBar: AppBar(
      //backgroundColor: Color.fromARGB(255, 119, 73, 204),
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      // title: const Text("Elective 5"),
      //  ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: Container(
          height: MediaQuery.of(context).size.height,
          //height: MediaQuery.of(context).orientation.portrait,
          width: MediaQuery.of(context).size.width,
          //10% of screen height
          //width: 400.0,

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
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                    width: 300,
                    height: 45,
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
                            radius: 20,
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
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                    width: 300,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                            radius: 20,
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
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  child: SizedBox(
                    height: 43, //height of button
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new HomePage()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 248, 248, 248),
                            elevation: 3,
                            padding: EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                        child: const Text(
                          'LOGIN',
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
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new HomePage()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Color.fromARGB(157, 255, 255, 255),
                          elevation: 3,
                          padding: EdgeInsets.all(0),
                        ),
                        child: Image.asset('assets/google.png',
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
                    "Don't have an account? ",
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
                                builder: (context) => new SignUpPage()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(0, 248, 248, 248),
                          padding: EdgeInsets.all(0),
                          elevation: 0),
                      child: const Text(
                        'Sign Up Now',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 255, 255),
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ]),
                Padding(padding: EdgeInsets.only(bottom: 30)),
                Container(
                  child: Text(
                    "Forgot Password?",
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
