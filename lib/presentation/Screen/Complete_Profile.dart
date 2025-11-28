import 'package:craft_bay/presentation/Utility/AssetPath.dart';
import 'package:flutter/material.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

final TextEditingController FNameController= TextEditingController();
final TextEditingController LNameController= TextEditingController();
final TextEditingController MobileController= TextEditingController();
final TextEditingController CityController= TextEditingController();
final TextEditingController AddressController= TextEditingController();

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    final textTheme=Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SafeArea(
          child: Column(
            children: [

              Image.asset(Assetpath.Jpglogo),
              SizedBox(height: 20,),
              Text("Complete Profile",style: textTheme.headlineLarge),
              SizedBox(height: 10,),
              Text("Get started with us with your details"),
              SizedBox(height: 20,),
              TextFormField(controller: FNameController,
                decoration: InputDecoration(hintText: "First Name"),),
              SizedBox(height: 10,),
              TextFormField(controller: LNameController,
                  decoration: InputDecoration(hintText: "Last Name")),
              SizedBox(height: 10,),
              TextFormField(controller: MobileController,
                  decoration: InputDecoration(hintText: "Mobile")),
              SizedBox(height: 10,),
              TextFormField(controller: CityController,
                  decoration: InputDecoration(hintText: "City")),
              SizedBox(height: 10,),
              TextFormField(controller: AddressController,
                decoration: InputDecoration(hintText: "Shopping Address"),
                maxLines: 3,),
              SizedBox(height: 10,),
              SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: () {
          
                }, child: Text("Complete")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
