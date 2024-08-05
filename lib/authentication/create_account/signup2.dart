import 'package:flutter/material.dart';
import 'package:snapclone/authentication/create_account/signup3.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => SignupState2();
}

class SignupState2 extends State<Signup2> {
  final birthdate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create account \nStep 2 of 5",
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
                    child: Text("Birthday",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextField(
                      controller: birthdate,
                      onChanged: (text) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        labelText: "Enter your birthday.",
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: const Icon(Icons.calendar_today),
                        ),
                      ),
                      keyboardType: TextInputType.datetime,
                      autofocus: true,
                      cursorColor: Colors.green,
                      cursorHeight: 25,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 10),
                    child: Text("Write you birthday in DD-MM-YYYY format.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
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
                      onPressed: birthdate.text.isEmpty
                          ? null
                          : () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const Signup3())).then((result) {});
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
