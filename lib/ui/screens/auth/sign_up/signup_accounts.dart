

import 'package:flutter/material.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';

class SignupAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: whiteColor,
      
        leading: Icon(Icons.arrow_back, color: blackColor),
        elevation: 0,
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Aligns to top
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,  // Aligns content in the center of the stack
                children: [
                  Image.asset(
                    AppAssets.logo,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                  // SizedBox(height: 60,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 150,),
                      Text(
                        'Sign IN',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.white.withOpacity(0.7), // Optional: Add a background color for contrast
                        ),
                      ),
                      SizedBox(height: 5), // Space between the two texts
                      Text(
                        'To continue with Travelers',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          backgroundColor: Colors.white.withOpacity(0.7), // Optional: Add a background color for contrast
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30), // Space between logo and the rest of the content

              // Your other widgets here (ListTiles, Containers, etc.)
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black, width: 2))),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.gicon),
                  ),
                  title: Text(
                    'hamza khan',
                    style: TextStyle(color: blackColor, fontSize: 18),
                  ),
                  subtitle: Text(
                    'hamza335590@gmail.com',
                    style: TextStyle(color: blackColor, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: blackColor, width: 2))),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.gicon),
                  ),
                  title: Text(
                    'asim abbas',
                    style: TextStyle(color: blackColor, fontSize: 18),
                  ),
                  subtitle: Text(
                    'hamza335590@gmail.com',
                    style: TextStyle(color: blackColor, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 13),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: blackColor, width: 2))),
                child: ListTile(
                  leading: Container(
                    width: 47,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Icon(Icons.person, color: Colors.black),
                  ),
                  title: Text(
                    "Use another account",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    // Handle tap action
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
