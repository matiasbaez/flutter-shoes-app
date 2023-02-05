import 'package:flutter/material.dart';

class ShoeModel with ChangeNotifier {

  String _assetImage = 'assets/imgs/azul.png';
  double _size = 9.0;

  String get assetImage => _assetImage;
  double get size => _size;

  set assetImage( String image ) {
    _assetImage = image;
    notifyListeners();
  }

  set size( double size ) {
    _size = size;
    notifyListeners();
  }

}
