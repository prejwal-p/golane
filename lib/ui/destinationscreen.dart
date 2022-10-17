import 'package:flutter/material.dart';
import 'package:golane_interview/models/networking.dart';
import 'package:provider/provider.dart';

class DestinationScreen extends StatefulWidget {
  const DestinationScreen({super.key});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    String selectedCity = 'Munich';

    return Scaffold(
      appBar: AppBar(
        title: Text('Destination Screen'),
      ),
      body: Consumer(
        builder: (context, value, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text('Your start locattion is:'),
              ),
              Center(
                child: Text('Munich'),
              ),
              Center(
                child: DropdownButton(
                  value: selectedCity,
                  items: CityData().getCities,
                  onChanged: (value) {
                    setState(() {
                      print(value);
                      selectedCity = value!;
                    });
                  },
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Selected End Point'))
            ],
          );
        },
      ),
    );
    ;
  }
}
