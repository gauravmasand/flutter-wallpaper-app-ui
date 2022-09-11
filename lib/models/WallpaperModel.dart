class WallpaperModel {
  late String _path, _category, _color;

  WallpaperModel(this._path, this._category, this._color);

  get color => _color;

  set color(value) {
    _color = value;
  }

  get category => _category;

  set category(value) {
    _category = value;
  }

  String get path => _path;

  set path(String value) {
    _path = value;
  }
}