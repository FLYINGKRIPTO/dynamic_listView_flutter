class Customization{
  String _title;
  List<String> _custom = [];


  Customization(this._title,this._custom);

  List<String> get custom => _custom;


  String get title => _title;

  set title(String value) {
    _title = value;
  }

  set custom(List<String> value) {
    _custom = value;
  }


}