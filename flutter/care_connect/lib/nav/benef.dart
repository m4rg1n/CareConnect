// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class benef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: Text('Beneficiary 1'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Beneficiary 1 Details",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "Name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Left TIT", style: TextStyle(fontSize: 18)),
              ),
              ListTile(
                title: Text(
                  "Age",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("69", style: TextStyle(fontSize: 18)),
              ),
              ListTile(
                title: Text(
                  "Phone Number 1",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("1234567890", style: TextStyle(fontSize: 18)),
              ),
              ListTile(
                title: Text(
                  "Phone Number 2",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("1234567890", style: TextStyle(fontSize: 18)),
              ),
              ListTile(
                title: Text(
                  "Last Known Activity",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Dead", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
