import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  RaisedButton(
                    disabledTextColor: Colors.grey,
                    disabledColor: Colors.red,
                    focusElevation: 20,
                    elevation: 50,
                    colorBrightness: Brightness.light,
                    disabledElevation: 25,
                    color: Colors.blue,
                    child: Text("press me - raised button"),
                    onPressed: (() {
                      print("pressed - raised");
                    }),
                    onLongPress: () {
                      print("pressed too long - raised");
                    },
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        print("pressed - elevated");
                      }),
                      onLongPress: () {
                        print("pressed too long - elevated");
                      },
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.red,
                          onPrimary: Colors.purple,
                          elevation: 20),
                      child: Text("press me - elevated button"))
                ],
              ),
            )));
  }
}
