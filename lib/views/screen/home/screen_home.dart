import 'package:flutter/material.dart';

import 'package:mankai/views/screen/home/home_toolbar/home_toolbar.dart';
import 'package:mankai/views/widgets/search.dart';

import 'home_banner/home_banner.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: new Color(00000),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}