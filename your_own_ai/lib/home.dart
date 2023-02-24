import 'package:flutter/material.dart';

import 'openAi/ImageGeneration/image_apicall.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var textfieldController = TextEditingController();
  String image = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Image Generation"),
        ),
        body: Column(
          children: [
            Expanded(
                child: Container(
                    color: Colors.red,
                    child: Column(
                      children: [
                        // Row(
                        //   children: [
                        //     // TextField(
                        //     //   controller: textfieldController,
                        //     //   decoration: InputDecoration(
                        //     //     hintText: "Enter Text",
                        //     //     // border: OutlineInputBorder(
                        //     //     //   borderRadius: BorderRadius.circular(10),
                        //     //     // ),
                        //     //   ))
                        TextField(
                            controller: textfieldController,
                            decoration: InputDecoration(
                              hintText: "Enter Text",
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10),
                              // ),
                            ))
                      ],
                    ))),
            ElevatedButton(
                onPressed: () async {
                  image = await ImageCall.getImage();
                  setState(() {
                    image = image;
                  });
                },
                child: Text("Generate Image")),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.blue,
                  child:image == ''
                      ? const CircularProgressIndicator()
                      : Image(image: NetworkImage(image)),
                ))
          ],
        ));
  }
}
