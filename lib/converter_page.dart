import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  @override
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final amountController = TextEditingController();
  String result = '';
  bool toDollar = false;

  void convert() {
    double amount = double.tryParse(amountController.text) ?? 0;
    if (toDollar) {
      result = (amount / 110).toStringAsFixed(2) + ' USD';
    } else {
      result = (amount * 110).toStringAsFixed(2) + ' BDT';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Currency Converter')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter amount'),
            ),
            SwitchListTile(
              title: Text(toDollar ? 'BDT to USD' : 'USD to BDT'),
              value: toDollar,
              onChanged: (value) {
                setState(() {
                  toDollar = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: convert,
              child: Text('Convert'),
            ),
            SizedBox(height: 20),
            Text(result, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
