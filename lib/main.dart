import 'package:catalog/dialog_page.dart';
import 'package:catalog/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        DialogPage.id: (context) => DialogPage(),
      },
    );
  }
}
