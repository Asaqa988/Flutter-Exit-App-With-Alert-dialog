import 'dart:io';

import 'package:flutter/material.dart';

class Exit_Screen extends StatefulWidget {
  const Exit_Screen({super.key});

  @override
  State<Exit_Screen> createState() => _Exit_ScreenState();
}

class _Exit_ScreenState extends State<Exit_Screen> {
  bool myvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exit my app"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: Text(
              "Do you want to exit the app",
              style: TextStyle(fontSize: 20, fontFamily: "Silkscreen"),
            ),
            value: myvalue,
            onChanged: (val) {
              setState(() {
                myvalue = val;
                if (val == true) {
                  exit(0);
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
