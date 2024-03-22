import 'package:flutter/material.dart';
import 'benefdetails.dart';

// Define the Beneficiary class
class Beneficiary {
  final String name;
  final int age;
  final String caretakerPhone;
  final String neighbourPhone;

  Beneficiary({
    required this.name,
    required this.age,
    required this.caretakerPhone,
    required this.neighbourPhone,
  });
}

class FormPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _name;
  int? _age;
  String? _caretakerPhone;
  String? _neighbourPhone;

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // Save the form fields

      // Create a new Beneficiary object with the form values
      Beneficiary newBeneficiary = Beneficiary(
        name: _name!,
        age: _age!,
        caretakerPhone: _caretakerPhone!,
        neighbourPhone: _neighbourPhone!,
      );

      // Navigate back to the homepage and pass the new beneficiary details
      Navigator.pop(context, newBeneficiary);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: Text('Beneficiary Details'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter Details of Beneficiary",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                // Text form field for name
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: "Name of Beneficiary",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid name";
                    }
                    return null;
                  },
                  onSaved: (value) => _name = value!,
                ),
                SizedBox(
                  height: 20,
                ),
                // Text form field for age
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Age of Beneficiary",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a value";
                    }
                    int? age = int.tryParse(value);
                    if (age != null) {
                      if (age < 0 || age > 120) {
                        return "Please enter a valid age between 0 and 120";
                      }
                      return null;
                    }
                    return "Please enter a valid age";
                  },
                  onSaved: (value) => _age = int.parse(value!),
                ),
                SizedBox(
                  height: 20,
                ),
                // Text form field for caretaker's phone number
                TextFormField(
                  keyboardType: TextInputType.phone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: "Caretaker's Phone Number (+91)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid number";
                    }
                    if (value.length != 10) {
                      return "Please enter a 10-digit number";
                    }
                    return null;
                  },
                  onSaved: (value) => _caretakerPhone = value!,
                ),
                SizedBox(
                  height: 20,
                ),
                // Text form field for neighbour's phone number
                TextFormField(
                  keyboardType: TextInputType.phone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: "Neighbour's Phone Number (+91)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a valid number";
                    }
                    if (value.length != 10) {
                      return "Please enter a 10-digit number";
                    }
                    return null;
                  },
                  onSaved: (value) => _neighbourPhone = value!,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () => _submitForm(context),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
