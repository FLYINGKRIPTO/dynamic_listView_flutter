import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter_app_myapp/Screens/themeandLayout.dart';
import 'package:flutter_app_myapp/main.dart';
import 'package:flutter_app_myapp/model/options_data.dart';

class SubOptions extends StatefulWidget {
  final String appBarTitle;
  final int position;

  SubOptions(this.appBarTitle, this.position);

  @override
  _SubOptionsState createState() =>
      _SubOptionsState(this.appBarTitle, this.position);
}

class _SubOptionsState extends State<SubOptions> {
  String appBarTitle;
  String option;
  int position=0;

  OptionsData opt = OptionsData();
  List<String> subOptions ;
  int length;


  _SubOptionsState(this.appBarTitle, this.position);

  @override
  Widget build(BuildContext context) {
    length = opt.getSubOptionListLength(position);
    debugPrint('sub :::: $subOptions');
    if (subOptions == null) {

      /* for (var i = 0; i < length; i++) {
        subOptions = opt.getSubOptions(i);
        prefix0.debugPrint('Inside for loopp');
        debugPrint('Sub Options here = $subOptions');
      }*/
    subOptions = opt.getSubOptions(position);
    prefix0.debugPrint('Inside for loopp');
    debugPrint('Sub Options here = $subOptions');



    }
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: getSubOptionsListView(),
      ),
    );
  }

  ListView getSubOptionsListView() {
    debugPrint('in getSubOptionsListView');
    //List<String> mySubOptions = opt.getSubOptions(position);
    //int length = mySubOptions.length;
    debugPrint('sub options length $length');
    debugPrint('my suboptions $subOptions');


    return ListView.builder(
        itemCount: length-1,
        itemBuilder: (BuildContext context, int position) {
          return Column(children: <Widget>[
            ListTile(
                title: Text(
                  //mySubOptions[position].toString(),
                  subOptions[position].toString(),
                ),
                onTap: () {
                  debugPrint('length $length');
                  debugPrint('position $position');
                  prefix0.debugPrint('option clicked');
                 // debugPrint(mySubOptions[position].toString());
                  debugPrint(subOptions[position].toString());

                  if(subOptions[position].toString()=='Theme and Layout') {
                    navigateToThemeAndLayout(
                        this.subOptions[position], position);
                  }
                  else {
                    debugPrint('Other Option Clicked');
                  }
                }),
            Divider()
          ]);
        });
  }

  Future navigateToThemeAndLayout(String option, int position) async {
    debugPrint(' Title $option and position $position');
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ThemeAndLayout(option);
    }));
  }
}
