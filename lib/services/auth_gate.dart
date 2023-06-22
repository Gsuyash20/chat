import 'package:chat/services/login_or_signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context,snapshot){
          //user is logged in
            if(snapshot.hasData){
              return const HomeScreen();
            }

            //user is not logged in
            else{
              return const LoginOrSignUp();
            }
          }),
    );
  }
}
