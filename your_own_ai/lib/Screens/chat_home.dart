import 'package:flutter/material.dart';

import '../openAi/textCompletion/completionsapi.dart';

class chat_home extends StatefulWidget {
  const chat_home({super.key});

  @override
  State<chat_home> createState() => _chat_homeState();
}

class _chat_homeState extends State<chat_home> {
  TextEditingController textEditingController = TextEditingController();
  var output = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Home"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: "Enter Text",
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  output = await CompletionsApi.getNewForecast(
                      textEditingController.text, 100);
                  setState(() {
                    output = output;
                  });
                },
                child: Text("get output")),
            Text(output == "" ? "Start Conversation" : output),
          ],
        ),
      ),
    );
  }
}
