import 'package:craft_bay/presentation/Screen/Product_screen.dart';
import 'package:craft_bay/presentation/Utility/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Catagory extends StatefulWidget {
  const Catagory({super.key});

  @override
  State<Catagory> createState() => _CatagoryState();
}

const List Catalog = [
  "food",
  "Electronics",
  "Fashon",
  "Furniture",
  "food",
  "Electronics",
  "Fashon",
  "Furniture",
  "food",
  "Electronics",
  "Fashon",
  "Furniture",
];
List<IconData> iconList = [
  Icons.home,
  Icons.settings,
  Icons.person,
  Icons.phone,
  Icons.favorite,
  Icons.electrical_services,
  Icons.phone,
  Icons.favorite,
  Icons.electrical_services,
  Icons.dashboard_customize_outlined,
  Icons.emoji_food_beverage_rounded,
  Icons.filter_5,
];

class _CatagoryState extends State<Catagory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Categories")),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: Catalog.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(ProductScreen( argument:Catalog[index]));
                },
                child: Container(
                  height: 100,
                  width: 120,
                  color: Colors.white,

                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),

                          decoration: BoxDecoration(
                            color: Appcolors.primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),

                          child: Icon(iconList[index],size: 30,color: Color(0xFF006064) ),
                        ),
                        Text(Catalog[index]),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
