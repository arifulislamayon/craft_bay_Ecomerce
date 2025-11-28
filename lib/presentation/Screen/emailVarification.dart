import 'dart:ffi';

import 'package:craft_bay/presentation/Screen/OTPvarification.dart';
import 'package:craft_bay/presentation/Utility/AppColors.dart';
import 'package:craft_bay/presentation/Utility/AssetPath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Emailvarification extends StatefulWidget {
  const Emailvarification({super.key});

  @override
  State<Emailvarification> createState() => _EmailvarificationState();
}
final TextEditingController _controller= TextEditingController();

class _EmailvarificationState extends State<Emailvarification> {
  @override
  Widget build(BuildContext context) {
   final textTheme =Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            SvgPicture.asset(Assetpath.SplashLogo),
            Text("WelcomeBack",style: textTheme.headlineLarge),
            SizedBox(height: 10),
            Text("Please Enter Your Email Address"),
            SizedBox(height: 10),
            TextFormField(controller: _controller,
              decoration: InputDecoration(
                focusColor: Appcolors.primaryColor,
                hintText: "Email",
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(()=> Otpvarification(argument: _controller) );
                },
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolors.primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
