import 'package:craft_bay/presentation/Screen/Cart.dart';
import 'package:craft_bay/presentation/Screen/Catagory.dart';
import 'package:craft_bay/presentation/Screen/Complete_Profile.dart';
import 'package:craft_bay/presentation/Screen/HomeScreen.dart';
import 'package:craft_bay/presentation/Screen/wishListScreen.dart';
import 'package:craft_bay/presentation/Utility/AppColors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int TabIndex=0;

  final List Screen=[
    Homescreen(),
    Catagory(),
    Cart(),
    Wishlistscreen(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[TabIndex],
      bottomNavigationBar: BottomNavigationBar(

        enableFeedback: false,
     selectedItemColor: Appcolors.primaryColor,
          currentIndex:TabIndex,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          iconSize: 24,
          showSelectedLabels: true,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,

          onTap: (value) {
            TabIndex=value;
            setState(() {

            });
          },
          items:[
            BottomNavigationBarItem( icon:Icon(Icons.home),label: "Home",),
            BottomNavigationBarItem(icon:Icon(Icons.category),label: "Catagory"),
            BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Curt "),
            BottomNavigationBarItem(icon:Icon(Icons.widgets_sharp),label: "WishList"),



          ]
       ),
    );
  }
}
