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
    return MaterialApp(
      theme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    fontFamily: 'Georgia',
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chat Home"),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
    
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  hintText: "start chat", 
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () async {
                    output = await CompletionsApi.getNewForecast(
                        textEditingController.text.toString(), 20);
                    setState(() {
                      output = output;
                    });
                  },
                  child: Text("Get output")),
              Text(output == "" ? "Start Conversation" : output),
            ],
          ),
        ),
      ),
    );
  }
}
