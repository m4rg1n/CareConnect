// home.dart
import 'package:flutter/material.dart';
import 'form.dart'; // Importing the form.dart file
import 'benefdetails.dart'; // Importing the BenefDetailsPage

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Beneficiary? newBeneficiary; // Variable to store the newly added beneficiary

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
              // Display button for the newly added beneficiary
              if (newBeneficiary != null)
                ElevatedButton(
                  onPressed: () {
                    // Navigate to beneficiary details page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BenefDetailsPage(beneficiary: newBeneficiary!)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.people, size: 48.0),
                        Text(
                          newBeneficiary!.name, // Display beneficiary name
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  // Navigate to form page and await result
                  var result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormPage()),
                  );
                  if (result != null && result is Beneficiary) {
                    // Set the newly added beneficiary
                    setState(() {
                      newBeneficiary = result;
                    });
                  }
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_circle),
                    SizedBox(width: 10.0),
                    Text(
                      'Add Member',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
