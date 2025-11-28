import 'package:craft_bay/presentation/Screen/Cart.dart';
import 'package:craft_bay/presentation/Screen/Catagory.dart';
import 'package:craft_bay/presentation/Screen/Complete_Profile.dart' show CompleteProfile;
import 'package:craft_bay/presentation/Screen/CreateReview.dart';
import 'package:craft_bay/presentation/Screen/MainScreen.dart';
import 'package:craft_bay/presentation/Screen/OTPvarification.dart';
import 'package:craft_bay/presentation/Screen/ReviewScreen.dart';
import 'package:craft_bay/presentation/Screen/Splash_Screen.dart';
import 'package:craft_bay/presentation/Screen/emailVarification.dart';
import 'package:craft_bay/presentation/Screen/wishListScreen.dart';
import 'package:craft_bay/presentation/Utility/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class craftbay extends StatefulWidget {
  const craftbay({super.key});

  @override
  State<craftbay> createState() => _craftbayState();
}

class _craftbayState extends State<craftbay> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Routes Demo',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),

        GetPage(name: '/second', page: () => MainScreen()),
      ],
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: Appcolors.primaryColor,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Appcolors.primaryColor,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        inputDecorationTheme: InputDecorationThemeData(
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Appcolors.primaryColor),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Appcolors.primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
