import 'package:flutter/material.dart';

class CityData extends ChangeNotifier {
  String? startCity;
  String? endCity;

  CityData({this.startCity, this.endCity});

  List<DropdownMenuItem<String>> get getCities {
    List<DropdownMenuItem<String>> cities = [
      DropdownMenuItem(
        child: Text('Munich'),
        value: 'Munich',
      ),
      DropdownMenuItem(
        child: Text('Berlin'),
        value: 'Berlin',
      ),
    ];

    return cities;
  }

  startDestination(String start) {
    print(start);
    startCity = start;
    notifyListeners();
  }

  endDestination(String end) {
    endCity = end;
    notifyListeners();
  }
}
