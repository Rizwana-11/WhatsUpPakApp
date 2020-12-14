import 'package:WhatsUpPak/src/Modules/AuthModule/Module.dart';
import 'package:WhatsUpPak/src/util/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NumberRegisterScreen extends StatefulWidget {
  @override
  _NumberRegisterScreenState createState() => _NumberRegisterScreenState();
}

class _NumberRegisterScreenState extends State<NumberRegisterScreen> {
  String dropdownValue = 'Pakistan';
  int dropdownintvalue = 92;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Utility.screenHeight(context),
          width: Utility.screenHeight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Enter your phone number",
                        style: TextStyle(
                            color: Colors.teal[700],
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 20),
                          width: 40,
                          child: Icon(Icons.more_vert))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "WhatsUpPak will send an SMS message to verify your phone number. What's my number?",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 25,
                      elevation: 16,
                      style: TextStyle(color: Colors.teal[700]),
                      underline: Container(
                        height: 2,
                        color: Colors.teal[700],
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['Pakistan', 'China']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row(
                      children: [
                        DropdownButton<int>(
                          icon: Icon(
                            Icons.arrow_drop_down,
                          ),
                          value: dropdownintvalue,
                          elevation: 16,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          underline: Container(
                            height: 2,
                            color: Colors.teal[700],
                          ),
                          onChanged: (int newvalue) {
                            setState(() {
                              dropdownintvalue = newvalue;
                            });
                          },
                          items: <int>[92, 93, 94, 95]
                              .map<DropdownMenuItem<int>>((int val) {
                            return DropdownMenuItem<int>(
                              value: val,
                              child: Text("+" + val.toString()),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child: Container(
                            width: 80,
                            height: 30,
                            // color: Colors.red,
                            child: TextField(
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(10)
                              ],
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    child: Center(
                      child: Text(
                        "Carrier SMS charges may apply",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  RaisedButton(
                    color: Colors.green,
                    onPressed: () {
                      Modular.to.pushNamed(AuthModule.PROFILE_AUTH_SCREEN);
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
