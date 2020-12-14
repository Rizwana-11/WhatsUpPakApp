import 'package:WhatsUpPak/src/Modules/ChatModule/Module.dart';
import 'package:WhatsUpPak/src/util/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileAuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: Utility.screenHeight(context) * 0.38,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      "Profile info",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal[700],
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Please provide your name and an optional profile photo",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.add_a_photo,
                      size: 40,
                      color: Colors.grey[500],
                    ),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(45)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 260,
                          child: TextField(
                            cursorColor: Colors.teal[700],
                            decoration: InputDecoration(
                              hintText: 'Type your name here',
                              hintStyle:
                                  TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 40,
                          child: Icon(Icons.insert_emoticon),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                RaisedButton(
                  color: Colors.green,
                  onPressed: () {
                    Modular.to.pushNamed(ChatModule.CHATSCREEN);
                  },
                  child: Text(
                    "NEXT",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
