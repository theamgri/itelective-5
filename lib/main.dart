import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
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
          width: 500,
          height: 700,
          color: Color.fromARGB(255, 119, 73, 204),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 119, 73, 204),
                          elevation: 3,
                          padding: EdgeInsets.all(0),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 50,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      new Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 119, 73, 204),
                          elevation: 3,
                          padding: EdgeInsets.all(0),
                        ),
                        child: Icon(
                          Icons.settings,
                          size: 50,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      //new Spacer(),
                      // Icon(Icons.settings,
                      //    size: 40, color: Color.fromARGB(255, 255, 255, 255)),
                    ]),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/image.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  child: Text(
                    'Althea Maghari',
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
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
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            Text(
                              'FOLLOWING',
                              style: TextStyle(
                                  fontFamily: 'NotoSans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            Text(
                              'JOINED YEAR',
                              style: TextStyle(
                                  fontSize: 18,
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
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            Text(
                              '19.3M',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            Text(
                              '2010',
                              style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ]),
                    ]),
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: SizedBox(
                    height: 55, //height of button
                    width: 400,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 245, 205, 27),
                            elevation: 3,
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                        child: const Text(
                          'Start Following',
                          style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontWeight: FontWeight.w500,
                            fontSize: 23,
                            color: Color.fromARGB(255, 105, 84, 21),
                          ),
                        )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 15)),
              ]),
        ),
      ),
    );
  }
}
