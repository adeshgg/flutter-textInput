import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  TextEditingController userNameController = TextEditingController();

  String userName = "";

  greetUser() {
    setState(() {
      userName = "Hello " + userNameController.text + "!!!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("User input"),
            backgroundColor: Colors.deepPurple[200],
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(userName),
                  TextField(
                    controller: userNameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Type your name..."),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: greetUser, child: Text("Submit")),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
