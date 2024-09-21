import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
              title: Text(
                "Assignment1",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Containers(
                    mycolor: Colors.cyan,
                  ),
                  Containers(
                    mycolor: Colors.teal,
                  ),
                  Containers(
                    mycolor: Colors.red,
                  ),
                  Containers(
                    mycolor: Colors.lightGreen,
                  ),
                  Containers(
                    mycolor: Colors.blue,
                  ),
                  Containers(
                    mycolor: Colors.pink,
                  ),
                  Containers(
                    mycolor: Colors.deepPurple,
                  ),
                  Containers(mycolor: Colors.orange),
                  Containers(mycolor: Colors.brown),
                  Containers(mycolor: Colors.yellow),
                ],
              ),
            )));
  }
}

class Containers extends StatelessWidget {
  final Color mycolor;

  Containers({required this.mycolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: mycolor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Top Left",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  )),
              Spacer(),
              Center(
                  child: Text(
                "Center",
                style: TextStyle(fontSize: 24, color: Colors.white),
              )),
              Spacer(),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Bottom Right",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
