import 'package:flutter/material.dart';
import 'package:grocerystore/screens/auth/forgetpassword_screen.dart';
import 'package:grocerystore/screens/auth/login_screen.dart';
import 'package:grocerystore/screens/auth/resetpassword_screen.dart';
import 'package:grocerystore/screens/auth/signup_screen.dart';
import 'package:grocerystore/screens/home_screen.dart';
import 'package:grocerystore/screens/launch_screen.dart';
import 'package:grocerystore/screens/walkthroughscreen/walkthrough_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/walkthrough_screen1': (context) => const WalkThroughScreen1(),
        '/login_screen':(context)=>const LoginScreen(),
        '/signup_screen':(context)=>const SignUpScreen(),
        '/forgetpassword_screen':(context)=>const ForgetPasswordScreen(),
        '/home_screen':(context)=>const HomeScreen(),
        '/resetpassword_screen':(context)=>const ResetPasswordScreen(),
      },
    );
  }
}
