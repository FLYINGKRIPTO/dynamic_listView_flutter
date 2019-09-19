import 'package:flutter/material.dart';
import 'package:flutter_app_myapp/model/options.dart';
import 'package:flutter_app_myapp/model/options_data.dart';
import 'package:flutter_app_myapp/Screens/suboptions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  OptionsData op = OptionsData();
  String option;
  //List<Options> optionsList;
  List<String> onlyOptions;
  List<String> subOption;
  int length;

  @override
  Widget build(BuildContext context) {
    length = op.getOptionListLength();
    debugPrint('Length = $length');
    if(onlyOptions == null){
      debugPrint('onlyOptions was null');
      onlyOptions = List<String>();
      for (var i = 0; i < length; i++) {
        option = op.getOption(i);
        onlyOptions.add(option);
        debugPrint('Options =  $option');
      }
      for (var i = 0; i < length; i ++) {
        subOption = op.getSubOptions(i);
        debugPrint('Sub Options = $subOption');
      }
    }



    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
       child: getOptionsListView(),
      )

    );
  }

  ListView getOptionsListView() {
    return ListView.builder(itemCount: getPosition(),itemBuilder: (BuildContext context, int position) {

      return Card(
        color: Colors.white,
        elevation: 5.0,
        child: ListTile(
          title: Text(onlyOptions[position].toString()),
          onTap: (){
              navigateToDetail(this.onlyOptions[position],position);
          },
        ),
      );
    });
  }

  void updateListView(){

    setState(() {

    });
  }

  int getPosition() {
        return length;
  }

  Future navigateToDetail(String onlyOption, int position) async {
     debugPrint('Title $onlyOption  and positon $position');
     bool result = await Navigator.push(context, MaterialPageRoute(builder: (context){
        return SubOptions(onlyOption,position);
     }));

     debugPrint('$result');

  }
}