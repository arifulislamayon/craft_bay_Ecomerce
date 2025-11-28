
import 'package:flutter/material.dart';

class Createreview extends StatefulWidget {
  const Createreview({super.key});

  @override
  State<Createreview> createState() => _CreatereviewState();
}
final TextEditingController FnameController= TextEditingController();
final TextEditingController LnameController= TextEditingController();
final TextEditingController DIsController= TextEditingController();

class _CreatereviewState extends State<Createreview> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(leadingWidth: 20,
          title: Text("Create  review"),

        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: FnameController,
              ),
              SizedBox(height: 15,),
              TextFormField(
                controller: LnameController,
              ),
              SizedBox(height: 15,),
              TextFormField(decoration: InputDecoration(hintText: "Name"),
                controller: DIsController,
              maxLines: 10,),
              SizedBox(height: 15,),
              SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: () {

                }, child: Text("Submit")),
              )

            ],
          ),
        ),

      );
  }
  void Dispose(){
    FnameController.dispose();
    LnameController.dispose();
    DIsController.dispose();
  }

}
