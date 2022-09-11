import 'dart:ui';

class ColorModel {
  late String _colorName;
  late Color _color;
  late Color _textColor;

  ColorModel(this._colorName, this._color, this._textColor);

  String get colorName => _colorName;

  set colorName(String value) {
    _colorName = value;
  }

  Color get color => _color;

  set color(Color value) {
    _color = value;
  }

  Color get textColor => _textColor;

  set textColor(Color value) {
    _color = value;
  }
}