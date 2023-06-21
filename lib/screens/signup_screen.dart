import 'package:chat/components/sign_button.dart';
import 'package:chat/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),

                //logo
                const FaIcon(
                  FontAwesomeIcons.solidComments,
                  size: 100,
                  color: Colors.blueGrey,
                ),

                const SizedBox(
                  height: 50,
                ),

                //create account message
                const Text(
                  "Welcome, Let's Create Your Account",
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: 25,
                ),

                // email text field
                MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false),

                const SizedBox(
                  height: 15,
                ),

                // password text field
                MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true),

                const SizedBox(
                  height: 15,
                ),

                // confirm password text field
                MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true),

                const SizedBox(
                  height: 25,
                ),

                //sign-up button
                SignButton(onTap: () {}, text: 'Sign up'),

                const SizedBox(
                  height: 50,
                ),

                // Redirect to Login screen
                const Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    children: [
                      TextSpan(
                        text: 'LogIn',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
