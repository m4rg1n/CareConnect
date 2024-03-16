import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const RoundedTextField({super.key, 
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: theme.shadowColor.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(color: theme.textTheme.bodyLarge!.color),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: theme.hintColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedTextField(
              hintText: 'Email',
              obscureText: false,
              controller: _emailController,
            ),
            const SizedBox(height: 20.0),
            RoundedTextField(
              hintText: 'Password',
              obscureText: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add Firebase authentication logic here
                // Call a function to handle sign-up
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Theme.of(context).secondaryHeaderColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 10.0), // Add space between buttons
            TextButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder:(context)=>SignIn()));
              },
              child: Text(
                'Already have an account? Sign In',
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.green,
      cardColor: Colors.white, 
      shadowColor: Colors.black,
    ),
    home: SignUpPage(),
  ));
}



