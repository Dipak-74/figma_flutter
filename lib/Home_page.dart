import 'dart:convert';

import 'package:flutter/material.dart';
import 'page.dart';

class SalePage extends StatefulWidget {
  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  int selectindex = 0;
  List view = ["", "", "", "", ""];
  List screen = [
    MyWidget(),
    Like(),
    Center(child: Text("Menu Coming Soon")),
    Center(child: Text("Cart Coming Soon")),
    Dipak(),
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectindex],
         bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectindex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            selectindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: selectindex==0 ?Colors.blue:Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: selectindex==1 ?Colors.blue:Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color: selectindex==2 ?Colors.blue:Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel, color: selectindex==3 ?Colors.blue:Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: selectindex==4 ?Colors.blue:Colors.black),
            label: "",
          ),
        ],
      ),
    );
  }
}
