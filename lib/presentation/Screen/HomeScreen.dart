import 'package:craft_bay/presentation/Screen/Complete_Profile.dart';
import 'package:craft_bay/presentation/Screen/Product_screen.dart';
import 'package:craft_bay/presentation/Utility/AppColors.dart';
import 'package:craft_bay/presentation/Utility/AssetPath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

final PageController _pageController = PageController();
bool seeall = false;
bool popular_see = false;
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

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leadingWidth: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(Assetpath.applogo,height: 30,width: 100,),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call, color: Colors.black),
          ),
          IconButton(
            onPressed: () {
              Get.to(CompleteProfile());
            },
            icon: Icon(Icons.manage_accounts_sharp, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_alert, color: Colors.black),
          ),
        ],

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                child: PageView(
                  controller: _pageController,
                  children: [
                    Container(

                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Assetpath.Jpglogo,height: 100,width: 100,),
                          SizedBox(width: 20),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Happy New Year\n Special Deal\n Save 30%",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:  Colors.white,
                                  borderRadius: BorderRadius.circular(10),) ,
                                width: 100,
                                height: 40,

                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.cyan,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: Colors.cyan,
                    ),
                    Container(

                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Assetpath.Jpglogo,height: 100,width: 100,),
                          SizedBox(width: 20),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Happy New Year\n Special Deal\n Save 30%",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:  Colors.white,
                                  borderRadius: BorderRadius.circular(10),) ,
                                width: 100,
                                height: 40,

                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.cyan,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: Colors.lightGreenAccent,
                    ),
                    Container(

                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(Assetpath.Jpglogo,height: 100,width: 100,),
                          SizedBox(width: 20),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Happy New Year\n Special Deal\n Save 30%",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color:  Colors.white,
                                  borderRadius: BorderRadius.circular(10),) ,
                                width: 100,
                                height: 40,

                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.cyan,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: Colors.amber,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(dotHeight: 10, dotWidth: 10),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Catagory",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      if (seeall == false) {
                        setState(() {
                          seeall = true;
                        });
                        return;
                      } else
                        setState(() {
                          seeall = false;
                        });
                    },
                    child: Text("see all"),
                  ),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: seeall ? 8 : 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),

                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(ProductScreen(argument: Catalog[index]));
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

                                child: Icon(
                                  iconList[index],
                                  size: 30,
                                  color: Color(0xFF006064),
                                ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      if (popular_see == false) {
                        setState(() {
                          popular_see = true;
                        });
                        return;
                      } else
                        setState(() {
                          popular_see = false;
                        });
                    },
                    child: Text("see all"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: popular_see ? 15 : 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  childAspectRatio: .7,
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,

                            width: 80,
                            height: 75,
                            child: Image.network(
                              electronics[index]["image"],
                              height: 35,
                              width: 35,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("a new Arrival", textAlign: TextAlign.center),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_shopping_cart),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
