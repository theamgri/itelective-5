import 'dart:convert';
import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/rightnavbar.dart';
import 'package:http/http.dart' as http;
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/navbar.dart';
import 'package:flutter_application_1/rightnavbar.dart';

// import 'data.dart';
//import 'package:collapsible_sidebar/collapsible_sidebar.dart';

void main() {
  runApp(const HomePage());
}

class ForData extends StatefulWidget {
  //User Data
  const ForData({super.key});
  @override
  State<StatefulWidget> createState() => _ForDataState();
}

class _ForDataState extends State<ForData> {
  late String FirstName;
  late String LastName;
  late String City;
  late String img;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData().then((value) {
      //var data = jsonDecode(value.body);
      //print(value[0]['picture']['medium']);

      setState(() {
        FirstName = value[0]['name']['first'];
        LastName = value[0]['name']['last'];
        City = value[0]['location']['city'];
        img = value[0]['picture']['medium'];
        ;
      });
    });
  }

  Future<List<dynamic>> getData() async {
    var response = await http.get(Uri.parse("https://randomuser.me/api/"));

    return jsonDecode(response.body)['results'];
  }

  Widget build(BuildContext context) {
    return Container(
        height: 450.0, //10% of screen height
        //width: 200.0,
        color: Color.fromARGB(255, 119, 73, 204),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(img)),
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  color: Colors.redAccent,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                child: Text(
                  FirstName + ", " + LastName,
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
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text(
                    City,
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(15.0),
              ),
            ]));
  }
}

class MyData {
  final String Meal;
  final String id;
  final String MealThumb;

  MyData({required this.id, required this.Meal, required this.MealThumb});

  factory MyData.fromJson(Map<String, dynamic> json) {
    return MyData(
        id: json['idMeal'],
        MealThumb: json['strMealThumb'],
        Meal: json['strMeal']);
  }
}

class MealData extends StatefulWidget {
  const MealData({super.key});
  @override
  State<StatefulWidget> createState() => _ForMealData();
}

class _ForMealData extends State<MealData> {
  List<MyData> data = [];
  late String mealnme;

  void initState() {
    mealnme = "";
    super.initState();
    getData();
  }

  Future<List<MyData>> getData() async {
    final response = await http.get(
        Uri.parse("https://www.themealdb.com/api/json/v1/1/filter.php?c=beef"));
    //var response = Uri.parse("https://www.themealdb.com/api/json/v1/1/filter.php?c=beef");
    if (response.statusCode == 200) {
      List jsonData = jsonDecode(response.body)['meals'];
      return jsonData.map((data) => MyData.fromJson(data)).toList();
      // setState(() {
      //  // data = (jsonData as List).map((item) => MyData.fromJson(item)).toList();
      // });
    } else {
      throw Exception('Error!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MyData>>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ResponsiveGridList(
            horizontalGridMargin: 50,
            verticalGridMargin: 50,
            //desiredItemWidth: 200,
            //minSpacing: 10,

            minItemWidth: 200,
            children: snapshot.data!.map((data) {
              return GridTile(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    gradient: new LinearGradient(
                      colors: [
                        Color.fromARGB(59, 250, 248, 247),
                        Color.fromARGB(59, 217, 248, 252)
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: const EdgeInsets.all(10)),
                      Image.network(
                        data.MealThumb,
                        height: 250,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 10, left: 30)),
                      Text(
                        data.Meal,
                        style: TextStyle(
                            height: 0.4,
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                        top: 20,
                      )),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        // By default show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

// This widget is the root of your application.
class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LeftDrawer(),
        //child: ForData(),
      ),
    );
  }
}
