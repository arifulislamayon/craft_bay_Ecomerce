import 'package:flutter/material.dart';

class Reviewscreen extends StatelessWidget {
  const Reviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(shape: RoundedRectangleBorder(),
              child:
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Row(children: [
                    Icon(Icons.supervised_user_circle),
                    Text("Rabbil Hasan"),
                  ],),
                  SizedBox(height: 5,),
                  Text(
                    "hsfughausfhs sahfusuiafh hsdfuodiaf saofhsofh oaedhfodhif aosdfhohfosd",
                    maxLines: 3,)
                ],
              ),
            ),
            ),
          );
        },
      ),
      floatingActionButton: Align(alignment: Alignment.bottomCenter,
        child: FloatingActionButton(onPressed: () {

        },
          child:Icon(Icons.add) ,),
      ),

    );
  }
}
