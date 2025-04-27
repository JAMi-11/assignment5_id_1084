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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: countries.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 ta flag ek row te
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final country = countries[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    country['image']!,
                    width: 100,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    country['name']!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
