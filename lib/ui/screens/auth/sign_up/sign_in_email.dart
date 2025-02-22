import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';

class SignInEmail extends StatelessWidget {  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: whiteColor,
  appBar: AppBar(
    leading: Icon(Icons.arrow_back,color: blackColor,),
    
  ),
  body: SingleChildScrollView(
    child: Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Stack(
            
            children: [
              Image.asset(AppAssets.logo,height: 220,),
              Column(
                children: [
                  SizedBox(height: 150,),
                  Text('Sign In',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold,fontSize: 24),),
                  Text('to continue with travelers',style: TextStyle(color: blackColor,fontSize: 18),),
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 85, 163, 231),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Color.fromARGB(255, 3, 124, 229)
                )
              )
            ),
          ),
              SizedBox(height: 15,),
              Text('Forgot password',style: TextStyle(color: Colors.cyan),),
              SizedBox(height: 120,),
              Text('when you use opur services yopu are trusting with us with your information we understand this is a big responsibility and work hard to protect your information and put you in control .terms you search for privacy',
              style: TextStyle(color: blackColor),),
              ElevatedButton(onPressed: () {  }, 
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                
              ),
              
              child:Text('sign in',style: TextStyle(color: whiteColor),),
              ),
        ],
      ),
    ),
    ),
  ),
);
  }
}
