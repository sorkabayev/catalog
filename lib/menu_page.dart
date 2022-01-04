import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  static const String id = "menu_page";

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late PageController _pageController;

  @override
  initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
            });
          },
          children: [
            Container(
              color: Colors.blueAccent,
              child: const Text("home"),
            ),
            Container(
              color: Colors.amber,
              child: const Text("home"),
            ),
            Container(
              color: Colors.lightGreenAccent,
              child: const Text("home"),
            )
          ],
        ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.shopping_cart, title: "Basket")
          ],
          onTabChangedListener: (int index) {
            setState(() {
              _pageController.animateToPage(index,
                  duration: const Duration(microseconds: 200),
                  curve: Curves.easeIn);
            });
          },
        ));
  }
}
