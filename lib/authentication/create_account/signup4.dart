import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';

class Signup4 extends StatefulWidget {
  const Signup4({super.key});

  @override
  State<Signup4> createState() => SignupState4();
}

class SignupState4 extends State<Signup4> {
  final passwords = TextEditingController();
  bool showPass = false;
  bool saveInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create account \nStep 4 of 5",
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
                    child: Text("Set a password",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextField(
                      controller: passwords,
                      onChanged: (text) {
                        setState(() {});
                      },
                      obscureText: showPass,
                      decoration: InputDecoration(
                        labelText: "Enter a password.",
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        isDense: true,
                        suffixIcon: InkWell(
                          child: Icon(
                            showPass
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: 25,
                          ),
                          onTap: () {
                            setState(() {
                              showPass = !showPass;
                            });
                          },
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
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
                          passwords.text.length < 8
                              ? Icons.error_outline
                              : Icons.check_circle,
                          color: passwords.text.length < 8
                              ? Colors.red
                              : Colors.green,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(passwords.text.length < 8
                            ? "Your password should be at least 8 characters"
                            : "Password looks good"),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      passwords.text.length < 8
                          ? Container()
                          : Checkbox(
                              value: saveInfo,
                              onChanged: (value) {
                                setState(() {
                                  saveInfo = !saveInfo;
                                });
                              },
                            ),
                      passwords.text.length < 8
                          ? Container()
                          : const Text(
                              "Save Login info on your device",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: ElevatedButton(
                      onPressed: passwords.text.length < 8
                          ? null
                          : () {
                              Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen()))
                                  .then((result) {});
                            },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        fixedSize: const Size(350, 50),
                        elevation: 3,
                        backgroundColor: Colors.blue,
                      ),
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
