import 'dart:io';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);
  static const String id = "dialog_page";

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

  void display(){
    if(Platform.isIOS){
      _iosDialog();
    }else
      _androidDialog();
  }


  void _iosDialog(){
    showDialog(context: context,
        builder: (BuildContext context){
      return CupertinoAlertDialog(
        title: Text("Log out"),
        content: Text("Are you sure you want to log out "),
        actions: [
          CupertinoAlertDialog(
          )
        ],
      );
        });
  }

  void _androidDialog(){

    showDialog(context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          title: Text("Log out"),
          content: Text("Are you sure you want to log out "),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Cencel"),),
            TextButton(onPressed: (){}, child: Text("Confirm"),),
          ],
        );
      },
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
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
                _androidDialog();
              },
              child: Text("Android dialog"),
              textColor: Colors.white,
              color: Colors.amber,
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              shape: StadiumBorder(),
              height: 50,
              minWidth: 250,
              onPressed: (){
                _iosDialog();
              },
              child: Text("Ios dialog"),
              textColor: Colors.white,
              color: Colors.amber,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Header", style: TextStyle(color: Colors.black, fontSize: 20),),
                    SizedBox(
                      height: 10,
                    ),
                    Text("sorkabayevjavlon@gmail.com", style: TextStyle(color: Colors.black, fontSize: 15),),
                  ],
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){},
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text("Contacts"),
              onTap: (){},
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){},
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
