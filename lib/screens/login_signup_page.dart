import 'package:flutter/material.dart';
import 'package:snapclone/authentication/login.dart';
import 'package:snapclone/authentication/create_account/signup.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellowAccent,
        // decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/snapclone.png",))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 400,
                  ),
                  SizedBox(
                    height: 140,
                    width: 140,
                    child: Image.asset("assets/images/Snapchat_logo.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () async {
                  // await signInWithGoogle();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  fixedSize: const Size(350, 50),
                  elevation: 3,
                  backgroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/googleicon.png',
                      height: 20.0,
                      width: 20.0,
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Signup()))
                      .then((result) {});
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    fixedSize: const Size(350, 50),
                    elevation: 3,
                    backgroundColor: Colors.lightBlue),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 60,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()))
                              .then((result) {});
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
//
//   Future<void> signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//       final GoogleSignInAuthentication googleAuth =
//       await googleUser!.authentication;
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//
//       final UserCredential authResult =
//       await FirebaseAuth.instance.signInWithCredential(credential);
//       final User? user = authResult.user;
//
//       print("Google Sign-In Successful: ${user?.displayName}");
//     } catch (e) {
//       print("Error during Google Sign-In: $e");
//     }
//   }
}
