// importing dependencies
import 'package:flutter/material.dart';
import 'package:ridex/map_page.dart';
// cupertino package was unuses
//import 'package:url_launcher/url_launcher.dart';

// function to trigger the app build
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapPage(),
      /*Scaffold(
        appBar: AppBar(
          title: const Text('Ride taxi service'),
          backgroundColor: Colors.green,
        ), // AppBar
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                ), //Container
                const Text(
                  'Welcome to Ride!',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ), //TextStyle
                ), //Text
                Container(
                  height: 20.0,
                ),

                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  child: const Text('Pick Location'),
                ),
                const SizedBox(height: 15), //
                ElevatedButton(
                  onPressed: _makingPhoneCall,
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  child: const Text('Call'),
                ),
                // ElevatedButton

                // DEPRECATED
                // RaisedButton(
                // onPressed: _makingPhoneCall,
                // child: Text('Call'),
                // textColor: Colors.black,
                // padding: const EdgeInsets.all(5.0),
                // ),
              ],
            ),
          ),
        ),
      ),*/
    );
  }
}
