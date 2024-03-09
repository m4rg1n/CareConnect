  import 'package:flutter/material.dart';

  void main() {
    runApp(MyApp());
  }

  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Member Management App',
        home: HomePage(),
      );
    }
  }

  class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Members'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], 
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  child: const Padding(
                    padding: EdgeInsets.all(16.0), 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.people, size: 48.0), 
                        Text(
                          'Beneficiary 1',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add_circle),
                      iconSize: 48.0,
                      onPressed: () {
                      },
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10.0), 
                    const Text(
                      'Add Member',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
