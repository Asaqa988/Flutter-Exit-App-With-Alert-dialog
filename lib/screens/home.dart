import 'package:app_one/screens/Exit%7B_Screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "hi from home page",
              style: TextStyle(
                  fontSize: 30, color: Colors.purple, fontFamily: "Silkscreen"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Exit_Screen();
                    },
                  ));
                },
                child: Text("go to exit app"))
          ],
        ),
      ),
    );
  }
}
