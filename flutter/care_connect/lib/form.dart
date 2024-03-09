// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitform() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(_formKey.currentContext!)
          .showSnackBar(const SnackBar(content: Text("success")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        appBar: AppBar(
          title: Text('Beneficiary Details'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Enter Details of Beneficary", style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        labelText: "Enter Name of beneficiary",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter";
                      }
                      return null;
                    }),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        labelText: "Enter Age of beneficiary",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a value";
                      }

                      int? age = int.tryParse(value);
                      if (age != null) {
                        if (age < 0 || age > 120) {
                          return "Please enter a valid age between 0 and 120";
                        }

                        return null;
                      }
                    }),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Enter Caretaker's Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter something";
                      }
                      if (value.length != 10) {
                        return "enter 10 DIGITS";
                      }
                      return null;
                    }),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Enter Neighbour's Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "enter something";
                      }
                      if (value.length != 10) {
                        return "enter 10 DIGITS";
                      }
                      return null;
                    }),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: _submitform, child: Text("submit"))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
