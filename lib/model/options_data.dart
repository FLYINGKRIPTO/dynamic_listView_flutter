import 'package:flutter/cupertino.dart';

import 'options.dart';
class OptionsData{
  List<Options> _optionsList = [

    Options("Account",["Change Email","Name","Change Password","Logout"]),
    Options("Premium",["Available Plans","Due date","Current Plan","Invoices","Cancel/Update Subscription",
    "Contact Customer Care"]),
    Options("App",["Theme and Layout","Sync and Storage","Archive","Home/Inbox screen default",
    "Details Screen customization","Folders and Tags"]),
    Options("Referals",["Refer a friend"]),
    Options("Import",['Import from Pocket','Import from Instapaer','Import from Browser']),
    Options("Help and Feedback",['FAQ','Guide','Submit and Feedback','Contact customer care',
    'Open Issues','Enable Analytics','Enable Crash Reporting','Enable Issue Logging']),
    Options("Privacy Policy",['Privacy Policy','Terms and Condition']),
    Options('About The App',['Version','About Us','Follow on twitter','Follow on Instapaper',
    'Website','Open Source license'
    ]),
    Options("Logout",[]),

  ];
  int getOptionListLength(){
  //  debugPrint( 'Length = $_optionsList.length');
    int length = _optionsList.length;
    debugPrint('Length = $length');
    return _optionsList.length;
  }


  String getOption(int index){
    return _optionsList[index].title;
  }

  List<String> getSubOptions(int index){
    return _optionsList[index].subOptions;
  }

}
