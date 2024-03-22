import 'package:flutter/material.dart';
import 'benef.dart';
import 'form.dart'; 

class BenefDetailsPage extends StatelessWidget {
  final Beneficiary beneficiary;

  const BenefDetailsPage({Key? key, required this.beneficiary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beneficiary Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${beneficiary.name}'),
            Text('Age: ${beneficiary.age}'),
            Text('Caretaker\'s Phone Number: ${beneficiary.caretakerPhone}'),
            Text('Neighbour\'s Phone Number: ${beneficiary.neighbourPhone}'),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
