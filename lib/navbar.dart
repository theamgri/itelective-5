import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/rightnavbar.dart';

void main() {
  runApp(LeftDrawer());
}

class LeftDrawer extends StatelessWidget {
  LeftDrawer({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  final _key = GlobalKey<ScaffoldState>();
  //final _keyScaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomePage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        canvasColor: Color.fromARGB(255, 78, 78, 78),
        scaffoldBackgroundColor: Color.fromARGB(255, 78, 78, 78),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 46,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      home: Builder(
        builder: (context) {
          final isSmallScreen = MediaQuery.of(context).size.width < 800;
          //final isSmallScreen2 = MediaQuery.of(context).size.width < 600;
          return Scaffold(
            key: _key,
            appBar: isSmallScreen
                ? AppBar(
                    backgroundColor: Color.fromARGB(255, 255, 132, 101),
                    //title: Text(_getTitleByIndex(_controller.selectedIndex)),
                    leading: IconButton(
                      onPressed: () {
                        // if (!Platform.isAndroid && !Platform.isIOS) {
                        //   _controller.setExtended(true);
                        // }
                        _key.currentState?.openDrawer();
                        //_key.currentState?.openEndDrawer();
                      },
                      icon: const Icon(Icons.menu),
                    ),
                  )
                : null,
            drawer: left(controller: _controller),
            endDrawer: right(
              controller: _controller,
            ),
            body: Row(
              children: [
                if (!isSmallScreen)
                  left(
                    controller: _controller,
                  ),
                Expanded(
                  child: Center(
                    child: _ScreensExample(
                      controller: _controller,
                    ),
                  ),
                ),
                if (!isSmallScreen)
                  right(
                    controller: _controller,
                  ),
                // Expanded(
                //   child: Container(
                //     child: right(
                //       controller: _controller,
                //     ),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class left extends StatelessWidget {
  const left({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 78, 78, 78),
        ),
        hoverColor: Color.fromARGB(255, 253, 116, 123),
        textStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7)),
        selectedTextStyle:
            const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
          ),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          color: Color.fromARGB(255, 253, 116, 123),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 78, 78, 78),
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return SizedBox(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(35),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/image.png',
                      ),
                      fit: BoxFit.fill),
                ),
              ),
            ));
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
          onTap: () {},
        ),
        const SidebarXItem(
          icon: Icons.folder,
          label: 'Projects',
        ),
        const SidebarXItem(
          icon: Icons.document_scanner,
          label: 'Report',
        ),
        const SidebarXItem(
          icon: Icons.settings,
          label: 'Settings',
        ),
        SidebarXItem(
          icon: Icons.info,
          label: 'About Us',
          onTap: () {
            debugPrint('About Us');
          },
        ),
      ],
    );
  }
}

//RIGHT NAVBAR
class right extends StatelessWidget {
  const right({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    //final theme = Theme.of(context);
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 78, 78, 78),
        ),
        hoverColor: Color.fromARGB(255, 253, 116, 123),
        textStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7)),
        selectedTextStyle:
            const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
          ),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          color: Color.fromARGB(255, 253, 116, 123),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Color.fromARGB(255, 255, 255, 255),
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 250,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 78, 78, 78),
        ),
      ),
      //footerDivider: divider,
      headerBuilder: (context, extended) {
        return ForData();
      },
      items: [
        SidebarXItem(
          icon: Icons.logout,
          label: 'Logout',
          onTap: () {
            Navigator.pushReplacement(context,
                new MaterialPageRoute(builder: (context) => new MyApp()));
          },
        ),
      ],
    );
  }
}

class _ScreensExample extends StatelessWidget {
  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final pageTitle = _getTitleByIndex(controller.selectedIndex);
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return Scaffold(
                body: Center(
                    child: Container(
              //width: 120,
              //height: 120,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
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
              child: MealData(),
            )));
          case 4:
            return Scaffold(
              body: Center(
                  child: Container(
                //width: 120,
                //height: 120,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
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

                child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Container(
                        width: 150,
                        height: 150,
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
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Container(
                              width: 500,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(2),
                                ),
                                gradient: new LinearGradient(
                                  colors: [
                                    Color.fromARGB(59, 250, 248, 247),
                                    Color.fromARGB(59, 217, 248, 252)
                                  ],
                                ),
                              ),
                              // height: MediaQuery.of(context).size.height,
                              //height: MediaQuery.of(context).orientation.portrait,
                              //width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              //width: 400,
                              child: Text(
                                '1. The Setup Experience was quite hassle for me due to the large packages to such as flutter SDK was a quite hassle to download. However, it is still pretty exciting when you are finally able to start coding.',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 253, 230, 26)),
                              )),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Container(
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(2),
                              ),
                              gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(59, 250, 248, 247),
                                  Color.fromARGB(59, 217, 248, 252)
                                ],
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '2. The building and running experience gave me a small hard time due to having a middle range computer. However, I have been using the flutter run to make it easier and lighter to run in coding',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 253, 230, 26)),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Container(
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(2),
                              ),
                              gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(59, 250, 248, 247),
                                  Color.fromARGB(59, 217, 248, 252)
                                ],
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '3. The highs in my progress is the when I get to see a progress that worked in my code. When each components are finally getting to connect and have a function. Lows in the code was debugging since I am new to flutter. When I was trying to debug, layout or style of coding in flutter is difficult to read sometimes.',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 253, 230, 26)),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Container(
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(2),
                              ),
                              gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(59, 250, 248, 247),
                                  Color.fromARGB(59, 217, 248, 252)
                                ],
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '4. The first bug I got my legit frustration while coding was when the code finally worked when I was testing it. Although when I am ready for recording, there has been error and it has been difficult to debug flutter due to I am new to it.',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 253, 230, 26)),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Container(
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              gradient: new LinearGradient(
                                colors: [
                                  Color.fromARGB(59, 250, 248, 247),
                                  Color.fromARGB(59, 217, 248, 252)
                                ],
                              ),
                            ),
                            child: Text(
                              '5. The first eureka moment is when finally learned how to use the components and widgets. One example also is when I finally got to use a package in flutter for the first time. Every beginner would also remember this moment as a sign that I can do this and become expert on it.',
                              style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 253, 230, 26)),
                            ),
                          ),
                        ],
                      ),
                    ])),
              )),
            );
          default:
            return Scaffold(
              body: Container(),
              //ForData(),
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Projects';
    case 2:
      return 'Report';
    case 3:
      return 'Settings';
    case 4:
      return 'About Us';

    default:
      return 'Not found page';
  }
}

const primaryColor = Color.fromARGB(255, 0, 0, 0);
//const canvasColor = Color(0xFF2E2E48);
//const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
