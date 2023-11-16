// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:listview_ui/screens/listview_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      print("tuing -- homeView");
    }

    final topAppBar = AppBar(
      iconTheme: IconThemeData(color: Colors.black87),
      elevation: 0.8,
      backgroundColor: Colors.white,
      title: Text(
        "Listview",
        style: TextStyle(color: Colors.black),
      ),
      // actions: [
      //   IconButton(
      //     onPressed: onPressed,
      //     icon: Icon(
      //       Icons.list,
      //       color: Colors.red,
      //     ),
      //   ),
      // ],
    );

    final makeBottomNav = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Colors.white54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.blur_on,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.hotel,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.account_box,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );

    final makeDrawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text("Drawer header."),
          ),
          ListTile(
            title: Text("Item 1"),
          )
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topAppBar,
      // bottomNavigationBar: makeBottomNav,
      drawer: makeDrawer,
      body: ListViewScreen(),
    );
  }
}
