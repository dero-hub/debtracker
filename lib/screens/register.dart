import 'package:debttracker/Components/myButton.dart';
import 'package:debttracker/Components/textfield.dart';
import 'package:debttracker/screens/login.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RegisterPage({super.key});

  //  login method
  void signup() {
    print("We'll create an account for you shortly");
  }

  navigateToLogin(context) {
  //  Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => LoginPage()),
  // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            const Icon(
              Icons.person,
              size: 80.0,
            ),

            const SizedBox(
              height: 25,
            ),
            //app name

            const Text(
              "D E B T R A C K E R",
              style: TextStyle(fontSize: 20),
            ),
            //firstname field
            const SizedBox(
              height: 25,
            ),

            MyTextField(
                hintText: "firstname",
                obscureText: false,
                controller: emailController),

            const SizedBox(
              height: 10,
            ),

            //lastname field
            MyTextField(
                hintText: "lastname",
                obscureText: true,
                controller: passwordController),

            const SizedBox(
              height: 10,
            ),
            //

            const SizedBox(
              height: 15,
            ),

            //signin button
            MyButton(text: "Signup", onTap: signup),

            const SizedBox(
              height: 10,
            ),
            //don't have an account? create one
            Row(
              children: [
                const Text("Already have an account? Click"),
                GestureDetector(
                  onTap: navigateToLogin(context),
                  child: const Text(
                    "here",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text("to Login"),
              ],
            )
          ],
        ),
      )),
    );
  }
}
