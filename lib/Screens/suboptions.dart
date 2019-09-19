import 'package:flutter/material.dart';
import 'package:flutter_app_myapp/main.dart';
import 'package:flutter_app_myapp/model/options_data.dart';
import 'package:vector_math/vector_math_operations.dart';


class SubOptions extends StatefulWidget {
  final String appBarTitle;
  final int position;



  SubOptions(this.appBarTitle,this.position);
  @override
  _SubOptionsState createState() => _SubOptionsState(this.appBarTitle,this.position);
}

class _SubOptionsState extends State<SubOptions> {
  String appBarTitle;
  String option;
  int position;

  OptionsData opt = OptionsData();
  List<String> subOptions = List<String>();
  int length;

  _SubOptionsState(this.appBarTitle,this.position);


  @override
  Widget build(BuildContext context) {

     if(subOptions == null){
    for (var i = 0; i < length; i ++) {
      subOptions = opt.getSubOptions(i);

      debugPrint('Sub Options here = $subOptions');
    }
     }
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),

      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
        child: getSubOptionsListView(),
      ),
    );
  }

  ListView  getSubOptionsListView() {
    debugPrint('in getSubOptionsListView');
    List<String> mySubOptions = opt.getSubOptions(position);
    int length = mySubOptions.length;
    debugPrint('sub options length $length');
    debugPrint('my suboptions $mySubOptions');

       return ListView.builder(itemCount: length,itemBuilder:
     (BuildContext context,int position){
        return Card(
          color: Colors.white,
          elevation: 5.0,
          child: ListTile(
            title: Text(mySubOptions[position].toString(),
            ),
            onTap: (){

            },
          ),
        );
     });
  }

}
