import 'package:craft_bay/presentation/Screen/ReviewScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key, required arguments});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

final PageController _pageController = PageController();
int variable = 1;
bool click = false;

class _ProductdetailsState extends State<Productdetails> {
  final data = Get.arguments;
  TextEditingController controller = TextEditingController(
    text:
    "Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator. Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details"), centerTitle: false),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: PageView(
              controller: _pageController,
              children: [
                Container(
                  child: Image.network(
                    "$data",
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  color: Colors.red,
                  height: 400,
                  width: double.infinity,
                ),
                Container(
                  child: Image.network(
                    "$data",
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  color: Colors.deepPurple,
                  height: 400,
                  width: double.infinity,
                ),
                Container(
                  child: Image.network(
                    "$data",
                    height: 200,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  color: Colors.blue,
                  height: 600,
                  width: double.infinity,
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: WormEffect(dotHeight: 10, dotWidth: 10),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                SizedBox(height: 10),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Happy New Year Special Deal\n Save 30%",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            if (variable != 1) {
                              setState(() {
                                variable--;
                              });
                            }
                          },

                          child: Icon(Icons.remove, color: Colors.blue),
                        ),
                        SizedBox(width: 8),
                        Text(variable.toString()),
                        SizedBox(width: 8),
                        InkWell(
                          onTap: () {
                            setState(() {
                              variable++;
                            });
                          },
                          child: Icon(Icons.add, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),


                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Text("4.8"),
                    SizedBox(width: 10),
                    InkWell(
                        onTap: () {
                         Get.to(Reviewscreen()) ;
                        },
                        child: Text("Review",style: TextStyle(fontSize: 12,color: Colors.blue),)),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          click = !click;
                        });
                      },
                      child: Icon(
                        click
                            ? Icons.heart_broken_rounded
                            : Icons.heart_broken_outlined,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Color",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Icon(Icons.check),

                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(radius: 15, backgroundColor: Colors.deepPurple),
                    SizedBox(width: 5),
                    CircleAvatar(radius: 15, backgroundColor: Colors.amber),
                    SizedBox(width: 5),
                    CircleAvatar(radius: 15, backgroundColor: Colors.black),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Size",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 5),
                Row(
                  children: [

                    SizedBox(width: 5),
                    Container(
                      width: 45,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey, // Border color
                          width: 1.5,          // Border thickness
                        ),
                      ),
                      child: Text(
                        "XL",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 45,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey, // Border color
                          width: 1.5,          // Border thickness
                        ),
                      ),
                      child: Text(
                        "XL",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 45,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey, // Border color
                          width: 1.5,          // Border thickness
                        ),
                      ),
                      child: Text(
                        "XL",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    Container(
                      width: 45,
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey, // Border color
                          width: 1.5,          // Border thickness
                        ),
                      ),
                      child: Text(
                        "XL",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                  
                ),
                  SizedBox(height: 10,),
                  Text("Discription"),


            TextField(
            controller: controller,
            maxLines: 5,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          )


        ],

              ),
            ),
          ),

        ],
      ),
    );
  }
}
