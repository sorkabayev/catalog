import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FlutterCatalog extends StatefulWidget {
  const FlutterCatalog({Key? key}) : super(key: key);

  static const String id = "flutter_catalog";

  @override
  _FlutterCatalogState createState() => _FlutterCatalogState();
}

class _FlutterCatalogState extends State<FlutterCatalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Flutter Catalog",
          style: TextStyle(color: Colors.black),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Column(
                children: [Text("Flutter")],
              ),
            ),
            ListTile(
              leading: Icon(Icons.send_outlined),
              title: Text("Send"),
            ),
            ListTile(
              leading: Icon(Icons.brush),
              title: Text("Send"),
            ),
            ListTile(
              leading: Icon(Icons.send_outlined),
              title: Text("Send"),
            ),
            ListTile(
              leading: Icon(Icons.send_outlined),
              title: Text("Send"),
            ),
            ListTile(
              leading: Icon(Icons.send_outlined),
              title: Text("Send"),
            ),
          ],
        ),
      ),
      body: PageView(
        children: [
          Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Text("gg"),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print("Opened"),
        onClose: () => print("Closed"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
              child: Icon(Icons.accessibility),
              backgroundColor: Colors.amber,
              label: "Person",
              onTap: () => print("First clicked")),
          SpeedDialChild(
              child: Icon(Icons.brush),
              backgroundColor: Colors.amber,
              label: "brush",
              onTap: () => print("First clicked")),
          SpeedDialChild(
              child: Icon(Icons.keyboard_voice),
              backgroundColor: Colors.amber,
              label: "voise",
              onTap: () => print("First clicked")),
        ],
      ),
    );
  }
}
