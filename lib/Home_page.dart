import 'package:flutter/material.dart';
import 'page.dart';

class SalePage extends StatefulWidget {
  @override
  State<SalePage> createState() => _SalePageState();
}



class _SalePageState extends State<SalePage> {
  int selectindex=0;
List screen=[
  MyWidget(),
   Center(child: Text("Likes Coming Soon")),
    Center(child: Text("Menu Coming Soon")),  
    Center(child: Text("Cart Coming Soon")),
  Dipak(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screen[selectindex] ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectindex,
          type: BottomNavigationBarType.fixed, 
          onTap: (index){
            setState(() {
              selectindex=index;
            });
          },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.blue),
            label: "Like",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.blue),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel, color: Colors.blue),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blue),
            label: "",
          ),
        ],
      ),
    );
  }
}
