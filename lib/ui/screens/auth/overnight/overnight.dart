import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:signuppage/core/constants/colors.dart';
import 'package:signuppage/ui/custom_widget/buttons/custom_button_1.dart';
import 'package:signuppage/ui/custom_widget/buttons/custom_gradient_button.dart';
import 'package:signuppage/ui/custom_widget/shimmmer/custom_nav_bar.dart';

class Overnight extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.5,color:Colors.grey, ))
          ),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10,right: 18,top: 10,bottom: 10)),
              Icon(Icons.search,color: blackColor,),
              SizedBox(width: 15,),
              Text('where would you like to go ?',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),)
        
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.5,color:Colors.grey, ))
          ),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10,right: 18,top: 10,bottom: 10)),
              Icon(Icons.person,color: blackColor,),
              SizedBox(width: 15,),
              Text('1 room 2 adults ',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),)
        
            ],
          ),
        ),
         Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.5,color:Colors.grey, ))
          ),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10,right: 18,top: 10,bottom: 10)),
              Icon(Icons.calendar_month,color: blackColor,),
              SizedBox(width: 15,),
              Text('calendar ',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),),
              
              
        
            ],
          ),
        ),
            SizedBox(height: 50,),
                CustomGradientButton(),
                SizedBox(height: 20,),
                SearchButton(),
              
          ],
          
        ),
        
      )
      
    );
  }
}
