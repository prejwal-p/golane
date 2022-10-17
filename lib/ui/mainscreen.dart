import 'package:flutter/material.dart';
import 'package:golane_interview/models/city.dart';
import 'package:golane_interview/models/networking.dart';
import 'package:golane_interview/ui/destinationscreen.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String selectedCity = 'Munich';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, value, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: DropdownButton(
                  value: selectedCity,
                  items: CityData().getCities,
                  onChanged: (value) {
                    setState(() {
                      selectedCity = value!;
                    });
                  },
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      CityData().startDestination(selectedCity);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DestinationScreen(),
                          ));
                    });
                  },
                  child: Text('Submit Start Point'))
            ],
          );
        },
      ),
    );
  }
}
