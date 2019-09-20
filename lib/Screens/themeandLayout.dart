import 'package:flutter/material.dart';
class ThemeAndLayout extends StatefulWidget {
  String appBarTitle;

  ThemeAndLayout(this.appBarTitle);
  @override
  _ThemeAndLayoutState createState() => _ThemeAndLayoutState(this.appBarTitle);
}

class _ThemeAndLayoutState extends State<ThemeAndLayout> {
  String appBarTitle;
  int position;

  _ThemeAndLayoutState(this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


    );
  }
}
