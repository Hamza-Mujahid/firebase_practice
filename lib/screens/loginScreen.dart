import 'package:firebase_practice/screens/register.dart';
import 'package:firebase_practice/widgets/Textfields/customTextField.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(customHintText: "Email", customIcon: Icons.email),
          CustomTextField(
              customHintText: "Password", customIcon: Icons.password),
          ElevatedButton(
            onPressed: () {
              print("submit button clikced");
            },
            child: Text("Submit"),
          ),
          InkWell(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Register(),
                ),
              );
            },
            child: const Text("Register Account"),
          )
        ],
      ),
    );
  }
}
