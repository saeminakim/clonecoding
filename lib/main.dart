import 'package:flutter/material.dart';
import 'package:netflix_clonecoding/screen/home_screen.dart';
import 'package:netflix_clonecoding/screen/more_screen.dart';
import 'package:netflix_clonecoding/screen/search_screen.dart';
import 'package:netflix_clonecoding/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lilflix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      // DefaultTabController 를 이용해서 몇 개의 탭을 둘 것인지(length) 설정
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            // NeverScrollableScrollPhysics : 손가락으로 swipe 해서 탭 전환 불가
            children: [
              HomeScreen(),
              SearchScreen(),
              Container(
                child: Center(
                  child: Text('save'),
                ),
              ),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
