import 'package:debttracker/Components/myButton.dart';
import 'package:debttracker/Components/textfield.dart';
import 'package:debttracker/screens/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  //  login method
  void login() {
    print("hey");
  }

    navigateToRegister(BuildContext context) {
   return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => RegisterPage()),
  );
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
            //email field
            const SizedBox(
              height: 25,
            ),

            MyTextField(
                hintText: "doe@example.com",
                obscureText: false,
                controller: emailController),

            const SizedBox(
              height: 10,
            ),

            //password field
            MyTextField(
                hintText: "password",
                obscureText: true,
                controller: passwordController),

            const SizedBox(
              height: 10,
            ),
            //forgot password
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("forgot password?", style: TextStyle(
                color: Colors.grey
              ),)],
            ),
            const SizedBox(
              height: 15,
            ),

            //signin button
            MyButton(text: "Signin", onTap: login),

             const SizedBox(
              height: 10,
            ),
            //don't have an account? create one
            Row(
              children: [
                const Text("don't have an account?"),
                 GestureDetector(
                  onLongPress: () => navigateToRegister(context),
                  child: const Text("register here", 
                style: 
                TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
