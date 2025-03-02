import 'package:flutter/material.dart';
import 'package:signuppage/splas-screen.dart';

import 'package:signuppage/ui/screens/auth/destination/select_destination.dart';
import 'package:signuppage/ui/screens/auth/slect_screen/select_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          home: SelectCar(),
          debugShowCheckedModeBanner: false,
        );
      }
    );
  }
}

