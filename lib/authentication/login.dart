import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 251, 251, 251),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Log In",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                keyboardType: TextInputType.phone,
                maxLength: 10,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
