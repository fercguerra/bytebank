import 'package:bytebank/database/app_database.dart';
import 'package:bytebank/model/contact.dart';
import 'package:flutter/material.dart';
import 'screen/dashboard.dart';

void main() {
  runApp(BytebankApp());
  //save(Contact(0, 'Fernanda', 1000)).then(id){
  findAll().then((contacts) => debugPrint(contacts.toString()));
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.green[900],
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: Colors.blueAccent[700]),
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.blueAccent[700],
              textTheme: ButtonTextTheme.primary,
            )),
        home: Dashboard());
  }
}
