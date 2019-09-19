import 'package:flutter_app_myapp/model/options_data.dart';

class Options {
  String _title;
  List<String> _subOptions = [];
  Options(this._title, this._subOptions);
  List<String> get subOptions => _subOptions;

  set subOptions(List<String> value) {
    _subOptions = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}
