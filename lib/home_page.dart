import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> countries = [
    {'name': 'Bangladesh', 'image': 'image/banglagesh.png'},
    {'name': 'United States', 'image': 'image/usa.png'},
    {'name': 'United Kingdom', 'image': 'image/uk.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Country Flags')),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final country = countries[index];
          return Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Image.asset(
                  country['image']!,
                  width: 100,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 20),
                Text(
                  country['name']!,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
