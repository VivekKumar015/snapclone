import 'package:flutter/material.dart';
import 'package:snapclone/authentication/create_account/signup4.dart';

class Signup3 extends StatefulWidget {
  const Signup3({super.key});

  @override
  State<Signup3> createState() => SignupState3();
}

class SignupState3 extends State<Signup3> {
  final username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create account \nStep 3 of 5",
          style:
          TextStyle(color: Colors.black, fontSize: 18, letterSpacing: 0.5),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        shadowColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Username",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextField(
                      controller: username,
                      onChanged: (text) {
                        setState(() {});
                      },
                      decoration: const InputDecoration(
                        labelText: "Enter your username.",
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                      autofocus: true,
                      cursorColor: Colors.green,
                      cursorHeight: 25,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          username.text.isEmpty ? Icons.close : Icons.check,
                          color:
                          username.text.isEmpty ? Colors.red : Colors.green,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(username.text.isEmpty
                            ? "Username is not available"
                            : "Username is available"),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: username.text.isEmpty
                          ? null
                          : () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const Signup4())).then((result) {});
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          fixedSize: const Size(350, 50),
                          elevation: 3,
                          backgroundColor: Colors.lightBlue),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
