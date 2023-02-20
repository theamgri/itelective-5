import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter_application_1/navbar.dart';

void main() {
  runApp(RightDrawer());
}

class RightDrawer extends StatelessWidget {
  RightDrawer({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  //final _key = GlobalKey<ScaffoldState>();

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
          final isSmallScreen = MediaQuery.of(context).size.width < 600;
          return Scaffold(
            key: _key,
            appBar: isSmallScreen
                ? AppBar(
                    backgroundColor: Color.fromARGB(255, 255, 132, 101),
                    //title: Text(_getTitleByIndex(_controller.selectedIndex)),
                    leading: IconButton(
                      onPressed: () {
                        // if (!Platform.isAndroid && !Platform.isIOS) {
                        _controller.setExtended(true);
                        //     // }
                        _key.currentState?.openEndDrawer();
                      },
                      icon: const Icon(Icons.menu_open),
                    ),
                  )
                : null,
            drawer: LeftDrawer(),
            endDrawer: ExampleSidebarX(controller: _controller),
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (!isSmallScreen) ExampleSidebarX(controller: _controller),
                Expanded(
                  child: Center(
                    child: _ScreensExample(
                      controller: _controller,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
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
        width: 400,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 78, 78, 78),
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return Container();
      },
      items: [
        const SidebarXItem(
          icon: Icons.logout,
          label: 'Logout',
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
    return Scaffold(
        //animation: controller,
        //builder: (context, child) {
        // switch (controller.selectedIndex) {
        //  default:
        body: Center(
            child: Container(
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
    )));
  }
}

const primaryColor = Color.fromARGB(255, 0, 0, 0);
//const canvasColor = Color(0xFF2E2E48);
//const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
