import 'package:flutter/material.dart';
import 'package:your_own_ai/Screens/chat_home.dart';
import 'package:your_own_ai/Screens/img_home.dart';
import 'package:your_own_ai/Screens/img_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: 
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>chat_home()));
          }, child: Text("Chat Home")),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>img_home()));
          }, child: Text("Image Home")),
        ],
      )
    )),
    );
  }
}