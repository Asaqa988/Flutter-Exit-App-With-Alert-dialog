import 'dart:io';

import 'package:app_one/screens/home.dart';
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
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Image.network(
                                                "https://th.bing.com/th/id/R.325552a8729481d6a0b2bd4d89709fa1?rik=jOmQOn480bvZcw&riu=http%3a%2f%2fi.myniceprofile.com%2f1391%2f139174.gif&ehk=iNmixOtPMd1sbQRxe%2bPnutlfCdmIc3%2fUYKoIqMt%2bGmc%3d&risl=&pid=ImgRaw&r=0"),
                                            Text(
                                              "It's hard to see you leave bye bye",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Silkscreen"),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  exit(0);
                                                },
                                                icon: Icon(
                                                  Icons.handshake,
                                                  size: 50,
                                                ))
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                "Yes, I am sure",
                                style: TextStyle(fontFamily: "Silkscreen"),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Image.network(
                                                "https://media1.tenor.com/images/b2addfef172fcc7a330bf5db2a89fd71/tenor.gif?itemid=16287625"),
                                            Text(
                                              "Thnak you ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: "Silkscreen"),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  Navigator.pop(context,
                                                      MaterialPageRoute(
                                                    builder: (context) {
                                                      return Home();
                                                    },
                                                  ));
                                                },
                                                icon: Icon(
                                                  Icons.face,
                                                  size: 50,
                                                ))
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                "No , I change my mind ",
                                style: TextStyle(fontFamily: "Silkscreen"),
                              )),
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
