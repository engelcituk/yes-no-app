import 'package:flutter/material.dart';

//el guion bajo lo vuelve privado
const Color _customColor = Color(0xFF5C11D4);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0 // argumentos con nombre y por default 0 o sino es default 0 se pondría como required
  }):assert( selectedColor >= 0 && selectedColor <= _colorThemes.length - 1, 'Colors must be between 0 and ${_colorThemes.length - 1 }' );
  // mètodo para construir el tema
  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
