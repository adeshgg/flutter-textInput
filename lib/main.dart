import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Submit")),
                )
              ],
            ),
          ),
        ));
  }
}
