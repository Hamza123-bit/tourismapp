import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signuppage/ui/screens/auth/sign_up/sign_up.dart';

class splashScreen extends StatefulWidget {  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen(),));
    });
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: Scaffold(
        body: Container(
          color: Colors.blue,
          child: const Center(
            child: Text('Flutter',style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),),
          ),
        ),
      ),
    );
  }}
