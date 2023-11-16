// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:listview_ui/widgets/custom_list_tile.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void onPressed() {
      print("tuing from listview dart");
    }

    final makeListTile = ListTile(
      leading: Container(
        padding: EdgeInsets.only(right: 24.0),
        decoration: BoxDecoration(
          border: Border(right: BorderSide(width: 1.0, color: Colors.white24)),
        ),
        child: Icon(Icons.autorenew, color: Colors.white),
      ),
      title: Text(
        "Intro to driving",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.linear_scale, color: Colors.yellow),
          Text(
            "Intermediate",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
    );

    final makeCard = Card(
      elevation: 0,
      margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: CustomListTile(),
      ),
    );

    final makeBody = Container(
      // height: 50,
      // width: 300,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return makeCard;
        },
      ),
    );

    return makeBody;
  }
}
