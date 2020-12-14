import 'package:WhatsUpPak/src/Modules/AuthModule/Module.dart';
import 'package:WhatsUpPak/src/util/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Utility.screenHeight(context),
          width: Utility.screenHeight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Welcome to WhatsUpPak",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal[500],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal[500],
                  borderRadius: BorderRadius.circular(100),
                ),
                height: 200,
                width: 200,
              ),
              Center(
                child: Text(
                  "Read our " +
                      "Privacy Policy" +
                      ". Tap \"Agree and continue\" to \n accept the " +
                      "Terms of Service.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Modular.to.pushNamed(AuthModule.NUM_REGISTER_SCREEN);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "AGREE AND CONTINUE",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                color: Colors.green,
              ),
              Column(
                children: [
                  Text(" from"),
                  Text("CUSIT",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.teal[600],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
