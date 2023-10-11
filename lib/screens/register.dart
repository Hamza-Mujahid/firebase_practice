import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practice/screens/loginScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  registerUser({required emailAddress, required password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(),
          TextField(),
          ElevatedButton(
              onPressed: () {
                registerUser(
                    emailAddress: 'sehar@gmail.com', password: '123456');
              },
              child: Text("Register")),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text("Already Have an account"))
        ],
      ),
    );
  }
}
