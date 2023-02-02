import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/rightnavbar.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:flutter_application_1/rightnavbar.dart';
//import 'package:collapsible_sidebar/collapsible_sidebar.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: LeftDrawer(),
      //endDrawer: RightDrawer(),
      body: Center(
        child: Container(
          child: LeftDrawer(),
          // child: Column(children: [],),
        ),
      ),

      //Container(

      // ),

      //endDrawer: Drawer(
      // child: rightnavbar(),
      //rightnavbar(),
    );
  }
}
