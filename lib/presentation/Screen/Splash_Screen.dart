import 'package:craft_bay/presentation/Utility/AssetPath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

void MoveOn() async{
await Future.delayed(Duration(seconds: 2));
  Get.toNamed('/second');
}


class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    MoveOn();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(Assetpath.SplashLogo),
          ),
          SizedBox(height: 100,),
          CircularProgressIndicator(),
          SizedBox(height: 20,),
          Text("Version 1.0.0"),
          SizedBox(height: 20,)
        ],
      )
    );
  }
}
