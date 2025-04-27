import 'package:flutter/material.dart';
import 'login_signup_page.dart';
import 'home_page.dart';
import 'converter_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Landing Page')),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: ListView(
          children: [
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => LoginSignupPage()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text('Login / Signup', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => HomePage()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text('Home Page', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ConverterPage()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text('Currency Converter', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
