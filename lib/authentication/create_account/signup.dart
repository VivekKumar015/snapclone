import 'package:flutter/material.dart';
import 'package:snapclone/authentication/create_account/signup2.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => SignupState();
}

class SignupState extends State<Signup> {
  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create account \nStep 1 of 5",
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
                    child: Text("What's your name?",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextField(
                      controller: name,
                      onChanged: (text) {
                        setState(() {});
                      },
                      decoration: const InputDecoration(
                        labelText: "First and Last name",
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
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 10),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                                text:
                                'By tapping Continue you acknowledge that you have read the '),
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                )),
                            TextSpan(text: ' and agree to the '),
                            TextSpan(
                                text: 'Terms of Service',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                )),
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: name.text.isEmpty
                          ? null
                          : () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const Signup2())).then((result) {});
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
