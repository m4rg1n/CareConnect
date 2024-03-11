import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitform() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(_formKey.currentContext!)
          .showSnackBar(const SnackBar(content: Text("Success")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        appBar: AppBar(
          title: Text('Beneficiary Details'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Activity Details",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Time elapsed since last activity:<time>",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Set Inactivity Time:",
                  style: TextStyle(fontSize: 15),
                ),
                TextFormField(
                    decoration: InputDecoration(
                  labelText: "hours",
                )),
                TextFormField(
                    decoration: InputDecoration(
                  labelText: "minutes",
                )),
                TextFormField(
                    decoration: InputDecoration(
                  labelText: "seconds",
                )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Done '),
                ),
                SizedBox(
                  height: 42,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Alert! '),
                ),
                SizedBox(height: 55),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Alert Neighbours '),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
