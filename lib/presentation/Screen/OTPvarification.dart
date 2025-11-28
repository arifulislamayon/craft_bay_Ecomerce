import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:craft_bay/presentation/Utility/AppColors.dart';
import 'package:craft_bay/presentation/Utility/AssetPath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Otpvarification extends StatefulWidget {
  final argument;

  const Otpvarification({super.key, required this.argument});

  @override
  State<Otpvarification> createState() => _OtpvarificationState();
}

class _OtpvarificationState extends State<Otpvarification> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            SvgPicture.asset(Assetpath.SplashLogo),
            Text("Enter OTP Code", style: textTheme.headlineLarge),
            SizedBox(height: 10),
            Text("A 4 Digit OTP has been send"),
            SizedBox(height: 10),
            PinCodeTextField(
              enableActiveFill: true,

              appContext: context,
              length: 6,
              animationType: AnimationType.fade,
              obscureText: false,
              pinTheme: PinTheme(),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed("/Third");
                },
                child: Text("Next"),

              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "This code Will Expired in",style: TextStyle(color: Colors.grey)),
                  TextSpan(text: "100",style: TextStyle(color:Color(0xFF009688) )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
