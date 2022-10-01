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
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: SizedBox(
                          width: 10,
                          height: 50,
                          child: Center(
                            child: Text("Are you Sure You Want to Leave ? "),
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Yes, I am sure",
                                style: TextStyle(fontFamily: "Silkscreen"),
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text("No, I change my mind",
                                  style: TextStyle(fontFamily: "Silkscreen")))
                        ],
                      );
                    },
                  );
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
