import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QyqFlutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Container(
          child: Scaffold(
            appBar: AppBar(
              title: Text("电影列表"),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(color: Colors.black),
              height: 50,

              child: TabBar(
                labelStyle: TextStyle(height: 0,fontSize: 10),
                  tabs: [
                Tab(
                  icon: Icon(Icons.movie_filter),
                  text: "正在热映",
                ),
                Tab(
                  icon: Icon(Icons.movie_creation),
                  text: "即将上映",
                ),
                Tab(
                  icon: Icon(Icons.local_movies),
                  text: "Top250",
                )
              ]),
            ),
          ),
        ));
  }
}
