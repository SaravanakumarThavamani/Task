import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var _result = ''.obs;
  var _intival = ''.obs;
  var _firstval = 0.obs;
  var _secondval = 0.obs;
  var _symbol = ''.obs;

  String get result => _result.value;
  String get intival => _intival.value;
  int get firstval => _firstval.value;
  int get secondval => _secondval.value;
  String get symbol => _symbol.value;

  void click(String clicval) {
    if (clicval == "C") {
      _result.value = "";
      _intival.value = "";
      _firstval.value = 0;
      _secondval.value = 0;
    } else if (clicval == "DEL") {
      if (_intival.value.isNotEmpty) {
        _intival.value = _intival.value.characters.skipLast(1).toString();
        _result.value = _intival.value;
      }
    } else if (clicval == '+' ||
        clicval == "*" ||
        clicval == "%" ||
        clicval == "-" ||
        clicval == "÷") {
      _firstval.value = int.parse(_intival.value);
      _result.value = "";
      _symbol.value = clicval;
    } else if (clicval == "=") {
      _secondval.value = int.parse(_intival.value);
      if (_symbol.value == "+") {
        _result.value = (_firstval.value + _secondval.value).toString();
      }
      if (_symbol.value == "-") {
        _result.value = (_firstval.value - _secondval.value).toString();
      }
      if (_symbol.value == "*") {
        _result.value = (_firstval.value * _secondval.value).toString();
      }
      if (_symbol.value == "÷") {
        _result.value = (_firstval.value / _secondval.value).toString();
      }
      if (_symbol.value == "%") {
        _result.value = (_firstval.value % _secondval.value).toString();
      }
    } else {
      _result.value = _intival.value + clicval;
    }
    _intival.value = _result.value;
  }
}
