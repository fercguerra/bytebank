import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/bytebank_logo.png',
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.green,
              child: Column(
                children: [Icon(Icons.people), Text('Contacts')],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
