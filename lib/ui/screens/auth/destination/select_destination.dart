import 'package:flutter/material.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';
import 'package:signuppage/ui/custom_widget/shimmmer/custom_nav_bar.dart';

class Destination extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: blackColor,
          body: Column(
            children: [
              Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.bgImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(top: 42,left: 14,right: 12),
              child:Column(
                children: [
                   Align(
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.arrow_back,color: blackColor,)),
                    SizedBox(height: 15,),
                    Text('Select destination',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 20,),
                    Container(
                      width: 350,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.7,color: Colors.grey),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                        children: [
                          
                          Padding(padding: EdgeInsets.all(10)),
                          Icon(Icons.search,color: Colors.grey,),
                          SizedBox(width: 6,),
                          Text('Location , landmark or property',style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 6,),
                          Icon(Icons.mic,color: blackColor,)
                        ],
                      ),
                      
                    ),
                    SizedBox(height: 40,),
                    Container(
                      padding: EdgeInsets.only(left: 65),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                           top: BorderSide(color: Colors.grey, width: 0.5),
                          bottom: BorderSide(
                          width: 0.5,
                          color: Colors.grey,
                          
                        ))
                      ),
                      child: Row(
                        children: [
                          Image.asset(AppAssets.location,width: 25,height: 25,),
                          SizedBox(width: 15,),
                          Text('Choose on map',style: TextStyle(color: Colors.cyan),)
                        ],
                      )
                    ),

                ],
              )
               
                 
                )
            ],
          ),
          bottomNavigationBar: CustomNavBar(),
    );
  }
}
