import 'package:flutter/material.dart';
import 'customization_model.dart';
class CustomizationData{
  List<Customization> _customList = [

    Customization('Theme and Layout',['Theme','Content Font Size','Margins','Line Height','Font']),
    Customization('Sync and Storage',['Enable Offline Sync','Max Storage','clear offline storage/download files',
    'sync interval','network to download','Download images']),
    Customization('Archive',['Auto Archive once finishing an Article','Degree to detect auto archive']),
    Customization('Home/Inbox screen default',['Default Filter','Default Sort Order','Style','Left Swipe','Right Swipe','Long Press Meaning']),
    Customization('Detail Screen Customization',['show up next','Auto full Screen']),
    Customization('Folders and Tags',['Edit Folders','Edit Tags']),

  ];
  int getOptionListLength(){
    //  debugPrint( 'Length = $_optionsList.length');
    int length = _customList.length;
    debugPrint('Length = $length');
    return _customList.length;
  }

   String getOptions(int index){
        return _customList[index].title;
   }

   List<String> getOptionsList(int index) {
     return _customList[index].custom;
   }
}