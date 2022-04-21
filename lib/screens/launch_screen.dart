import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/walkthrough_screen1');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('images/4284.png',fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
          Padding(
            padding: const EdgeInsets.only(top: 270.76,left: 83.1),
            child: Image.asset('images/Logo.png',),
          ),
        ],
      ),
    );
  }
}
