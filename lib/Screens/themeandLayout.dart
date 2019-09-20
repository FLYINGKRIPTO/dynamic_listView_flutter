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
    return MaterialApp(
      title: 'Theme and Layout',
      home: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: getThemeContainers()),
            Expanded(child: getFontSizeSlider()),
            Expanded(child: getMarginsSetter()),
            Expanded(child: getLineHeightSetter()),
            Expanded(child: getFontSetter()),
          ],
        ),
      ),
    );
  }

  Widget getThemeContainers() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20.5, right: 20.5),
            child: RaisedButton(
              color: Colors.white70,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              onPressed: () {


              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20.5, right: 20.5),
            child: RaisedButton(
              color: Colors.black45,
              elevation: 10.5,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0)),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }

  Widget getFontSizeSlider() {
    return Container(
      child: Text('SLider'),
    );
  }

  Widget getMarginsSetter() {
    return Container(
      child: Text('Set Margin'),
    );
  }

  Widget getLineHeightSetter() {
    return Container(
      child: Text('set Line Height'),
    );
  }

  Widget getFontSetter() {
    return Container(
      child: Text('Set Font'),
    );
  }
}
