import 'package:flutter/material.dart';
import 'package:flutter_app_myapp/model/customization_model.dart';
import 'package:flutter_app_myapp/model/customization_options_data.dart';
class Customization extends StatefulWidget {
  final String appBarTitle;
  final int position;

  Customization(this.appBarTitle,this.position);
  @override
  _CustomizationState createState() => _CustomizationState(this.appBarTitle,this.position);
}

class _CustomizationState extends State<Customization> {
  String appBarTitle;
  int position;

  CustomizationData cd = CustomizationData();
  List<String> customOptions ;
  int length;

  _CustomizationState(this.appBarTitle,this.position);
  @override
  Widget build(BuildContext context) {
     length =  cd.getOptionListLength();
    if(customOptions == null){
      customOptions = List<String>();

      for (var i = 0; i < length; i ++) {
        customOptions = cd.getOptionsList(i);

        debugPrint('Sub Options here = $customOptions');
      }
    return  Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),

      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
        child: getCustomOptionsListView(),
      ),
    );
  }
}

  ListView getCustomOptionsListView() {

    debugPrint('Inside get Customization Options ListView');
    List<String> myCustomOptions  = cd.getOptionsList(position);
    int length = myCustomOptions.length;
    debugPrint('custom Options length $length');
    debugPrint('my custom options $myCustomOptions');

    return ListView.builder(itemCount: length,itemBuilder:
    (BuildContext context,int position){
        return Column(

            children : <Widget>[
              ListTile(
                title: Text(myCustomOptions[position].toString(),
                ),

                onTap: (){
                  debugPrint(myCustomOptions[position].toString());

                },
              ),
              Divider()
            ]
        );
    });
  }
}
