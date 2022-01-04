import 'package:catalog/dialog_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  DateTime? currentBackPressTime;



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                shape: StadiumBorder(),
                height: 50,
                minWidth: 250,
                onPressed: (){
                  Navigator.pushNamed(context, DialogPage.id);
                },
              child: Text("Dialog"),
              textColor: Colors.white,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future<bool> onWillPop(){
    DateTime now = DateTime.now();
    if(currentBackPressTime == null || now.difference(currentBackPressTime!) > Duration(seconds: 2)){
      currentBackPressTime = now;
      return Future.value(false);
    }
    return Future.value(true);
  }
}
