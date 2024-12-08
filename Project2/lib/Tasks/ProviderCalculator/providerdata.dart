import 'package:flutter/material.dart';

class CalculatorModel with ChangeNotifier {
  String _result = '';
  String _intival = '';
  int _firstval = 0;
  int _secondval = 0;
  String _symbol = '';

  String get result => _result;
  String get intival => _intival;
  int get firstval => _firstval;
  int get secondval => _secondval;
  String get symbol => _symbol;

  void click(String clicval) {
    if (clicval == "C") {
      _result = '';
      _intival = '';
      _firstval = 0;
      _secondval = 0;
    } else if (clicval == "DEL") {
      if (_intival.isNotEmpty) {
        _intival = _intival.substring(0, _intival.length - 1);
        _result = _intival;
      }
    } else if (clicval == '+' ||
        clicval == "*" ||
        clicval == "%" ||
        clicval == "-" ||
        clicval == "÷") {
      _firstval = int.parse(_intival);
      _result = '';
      _symbol = clicval;
    } else if (clicval == "=") {
      _secondval = int.parse(_intival);
      if (_symbol == "+") {
        _result = (_firstval + _secondval).toString();
      }
      if (_symbol == "-") {
        _result = (_firstval - _secondval).toString();
      }
      if (_symbol == "*") {
        _result = (_firstval * _secondval).toString();
      }
      if (_symbol == "÷") {
        _result = (_firstval / _secondval).toString();
      }
      if (_symbol == "%") {
        _result = (_firstval % _secondval).toString();
      }
    } else {
      _result = _intival + clicval;
    }
    _intival = _result;
    notifyListeners();
  }
}
