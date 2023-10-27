import 'package:debttracker/Components/textfield.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {

   TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

   LoginPage({super.key});

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

           const  Text(
              "D E B T R A C K E R",
              style: TextStyle(fontSize: 20),
            ),
            //email field
           const  SizedBox(
              height: 25,
            ),

            MyTextField(
                hintText: "doe@example.com", 
                obscureText: false, 
                controller: emailController),

           const  SizedBox(
              height: 10,
            ),

            //password field
            MyTextField(
                hintText: "password",
                obscureText: true,
                controller: passwordController),

               const  SizedBox(
              height: 10,
            ),
            //forgot password
const Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Text("forgot password?")
  ],
)
            //don't have an account? create one
          ],
        ),
      )),
    );
  }
}
