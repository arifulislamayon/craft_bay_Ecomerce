

import 'package:craft_bay/presentation/Screen/Cart.dart';
import 'package:craft_bay/presentation/Screen/ProductDetails.dart';
import 'package:craft_bay/presentation/Utility/data_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatefulWidget {
  final String argument;
  const ProductScreen({super.key, required this.argument});


  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('argument'),
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
          return InkWell(
            onTap: () {
              var variable=DataClass.products[index]["image"];
             Get.to(Productdetails(arguments: variable));
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      DataClass.products[index]["image"],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
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
            ),
          );
        },
      ),
      
    );
  }
}
