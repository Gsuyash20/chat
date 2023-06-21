import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginOrSignUp extends StatefulWidget {
  const LoginOrSignUp({super.key});

  @override
  State<LoginOrSignUp> createState() => _LoginOrSignUpState();
}

class _LoginOrSignUpState extends State<LoginOrSignUp> {
  //initially show the login screen
  bool showLoginScreen = true;

  //toggle between login and signup screen
  void toggleScreens(){
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginScreen){
      return LoginScreen(onTap: toggleScreens);
    }
    else{
      return SignUpScreen(onTap: toggleScreens);
    }
  }
}
