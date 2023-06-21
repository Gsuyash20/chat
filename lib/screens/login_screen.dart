import 'package:chat/components/sign_button.dart';
import 'package:chat/components/text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  final void Function()? onTap;
  const LoginScreen({super.key, required this.onTap});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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

                //welcome back message
                const Text(
                  'Welcome back :)',
                  style: TextStyle(fontSize: 24),
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
                  height: 25,
                ),

                //sign-in button
                SignButton(onTap: () {}, text: 'Sign in'),
                const SizedBox(
                  height: 50,
                ),
                // Redirect to Sign up screen
                Text.rich(
                  style: const TextStyle(fontSize: 17),
                  TextSpan(text: "Don't have an account? ", children: [
                    TextSpan(
                      text: 'SignUP',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()..onTap = widget.onTap,
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
