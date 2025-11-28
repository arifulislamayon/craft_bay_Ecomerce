import 'package:craft_bay/presentation/Screen/HomeScreen.dart';
import 'package:craft_bay/presentation/Screen/MainScreen.dart';
import 'package:craft_bay/presentation/Screen/ProductDetails.dart';
import 'package:craft_bay/presentation/Utility/AssetPath.dart';
import 'package:craft_bay/presentation/Utility/data_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wishlistscreen extends StatefulWidget {
  const Wishlistscreen({super.key});

  @override
  State<Wishlistscreen> createState() => _WishlistscreenState();
}



class _WishlistscreenState extends State<Wishlistscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading:
      GestureDetector(
          onTap:() {
            Get.to(MainScreen());
          },
          child: Icon(Icons.arrow_back_sharp)),
        title: Text("WishList", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: GridView.builder(
        itemCount: DataClass.products.length,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: .8,
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      var variable=DataClass.products[index]["image"];
                      Get.to(Productdetails(arguments:variable ));
                    },
                    child: Image.network(
                      DataClass.products[index]["image"],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Text(DataClass.products[index]["name"], style: TextStyle(fontSize: 10)),
                  Divider(indent: 0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(DataClass.products[index]["price"].toString(), style: TextStyle(color: Colors.blue)),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.delete_forever, color: Colors.red),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
