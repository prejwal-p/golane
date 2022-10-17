import 'package:flutter/material.dart';

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
