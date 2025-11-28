


import 'package:craft_bay/presentation/Screen/HomeScreen.dart';
import 'package:craft_bay/presentation/Screen/MainScreen.dart';
import 'package:craft_bay/presentation/Screen/ProductDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}
List<Map<String, dynamic>> electronics = [
  {
    "image": "https://picsum.photos/id/62/400/400",
    "name": "Wireless Headphone",
    "price": 2100,
  },
  {
    "image": "https://picsum.photos/id/1080/400/400",
    "name": "Bluetooth Speaker",
    "price": 1800,
  },
  {
    "image": "https://picsum.photos/id/530/400/400",
    "name": "Gaming Keyboard",
    "price": 3200,
  },
  {
    "image": "https://picsum.photos/id/512/400/400",
    "name": "Noise Cancelling Earbuds",
    "price": 2700,
  },
  {
    "image": "https://picsum.photos/id/510/400/400",
    "name": "Wireless Mouse",
    "price": 650,
  },

  {
    "image": "https://picsum.photos/id/800/400/400",
    "name": "Smartphone Tripod",
    "price": 950,
  },
  {
    "image": "https://picsum.photos/id/870/400/400",
    "name": "USB Microphone",
    "price": 2100,
  },
  {
    "image": "https://picsum.photos/id/910/400/400",
    "name": "Portable SSD 1TB",
    "price": 6500,
  },
  {
    "image": "https://picsum.photos/id/950/400/400",
    "name": "Mechanical Gaming Mouse",
    "price": 1300,
  },
  {
    "image": "https://picsum.photos/id/1003/400/400",
    "name": "HD Webcam",
    "price": 1800,
  },
  {
    "image": "https://picsum.photos/id/1011/400/400",
    "name": "RGB Light Bar",
    "price": 1200,
  },
  {
    "image": "https://picsum.photos/id/1024/400/400",
    "name": "Wireless Charger Pad",
    "price": 1100,
  },
  {
    "image": "https://picsum.photos/id/1033/400/400",
    "name": "Gaming GPU Cooler",
    "price": 2500,
  },
  {
    "image": "https://picsum.photos/id/1044/400/400",
    "name": "Smart WiFi Plug",
    "price": 700,
  },
  {
    "image": "https://picsum.photos/id/1050/400/400",
    "name": "Laptop Cooling Pad",
    "price": 1500,
  },
];



 List<int>variable=List.generate(15, (index) => 1,);
class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,

      appBar: AppBar(
        leading: InkWell(onTap: () {
          Get.to(Homescreen());
        },
            child: Icon(Icons.arrow_back_sharp)),

        title: Text("Product Curt"),),
      body: SafeArea(
        child: ListView.builder(
          itemCount: electronics.length,
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      electronics[index]["image"],
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
        
                    const SizedBox(width: 12),
        
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
        

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                      electronics[index]["name"],
                                style: TextStyle(fontSize: 16),
                              ),
                              Icon(Icons.delete),
                            ],
                          ),
        
                          const SizedBox(height: 12),
        
                          /// Price + Counter
                          Row(
                            children: [
                              Text(electronics[index]["price"].toString(),
                                  style: TextStyle(fontSize: 16)),
        
                              Spacer(),
        
                              InkWell(onTap: () {

                                  if (variable[index] !=1){
                                    setState(() {
                                      variable[index]--;

                                    });
                                  }
                              },
                                  
                                  child: Icon(Icons.remove, color: Colors.blue)),
                              SizedBox(width: 8),
                              Text(variable[index].toString()),
                              SizedBox(width: 8),
                              InkWell(
                                  onTap: () {

                                      setState(() {
                                        variable[index]++;
                                      });



                                  },
                                  child: Icon(Icons.add, color: Colors.blue)),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
