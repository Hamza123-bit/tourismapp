import 'package:flutter/material.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';

class LoginUp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body:  Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.bgImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Align(alignment: Alignment.topLeft,),
                      Text('Login up',style: TextStyle(
                        color: whiteColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 30,),
                      Text('Log in with one of the following option',style: TextStyle(color: whiteColor),),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: authBoxColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 12),
                              ),
                              child: Image.asset(
                                AppAssets.gicon,
                                height: 18,
                                width: 18,)
                              //  child: Text('Google',style: TextStyle(color: Colors.white,
                              // fontSize: 18),),
                            ),
                          ),
                          SizedBox(width: 16,),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:authBoxColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 12),
                              ),
                              child: Image.asset(
                                AppAssets.aicon,
                                height: 18,
                                width: 18,)
                              //  child: Text('Google',style: TextStyle(color: Colors.white,
                              // fontSize: 18),),
                            ),
                          ),
                      ],
                    ),

                    SizedBox(height: 20,),
                    Text('Email',style: TextStyle(color: whiteColor),),
                    SizedBox(height: 13,),
                    TextFormField(
                     decoration: InputDecoration(
                      filled: true,
                      fillColor: authBoxColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none
                      )
                     ), 
                    ),
                    SizedBox(height: 16,),
                    Text('password',style: TextStyle(color: whiteColor),),
                    SizedBox(height: 13,),
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: authBoxColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                    SizedBox(height: 85,),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors:[Colors.purple,Colors.pinkAccent,
                        ] ,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextButton(
                        onPressed: (){}, child:Text('Login',style: TextStyle(color: whiteColor),) ,
                      ),
                    ),
                    SizedBox(height: 16,),
                    Center(
                      child: RichText(text: TextSpan(
                        text: "Don,t have an account ?",style: TextStyle(color: whiteColor,fontSize: 14),
                        children: [
                              TextSpan(
                                text: "   Sign up",
                                
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: whiteColor,
                                  
                                ),
                              ),
                            ],
                        
                        
                      ),),
                    )
                    ]
    )
                ),
              ),),);
  }
}
