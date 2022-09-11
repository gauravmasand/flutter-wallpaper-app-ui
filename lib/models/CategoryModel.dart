class CategoryModel {
  late String _title, _path;

  CategoryModel(this._title, this._path);

  get path => _path;

  set path(value) {
    _path = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}