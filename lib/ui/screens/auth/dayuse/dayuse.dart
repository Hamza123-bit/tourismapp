import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:signuppage/core/constants/colors.dart';
import 'package:signuppage/ui/custom_widget/buttons/custom_button_1.dart';

class DayUse extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: whiteColor,border: Border(
                bottom: BorderSide(width: 0.5,color: Colors.grey)
              )
            ),
            padding: EdgeInsets.only(left: 24,top: 10,bottom: 4),
            child: Column(
              children: [
              
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Hourly Stays (Day Use)',style: TextStyle(color: redColor),)),
                SizedBox(height: 5,),
                Text('Book rooms for shorter , cheaper stays that       are not overnight',style: TextStyle(color: blackColor))
              ],
            ),
            
          ),
          Container(
            padding: EdgeInsets.only(left: 17,bottom: 10,right: 10,top: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Colors.grey
                )
              )
            ),
            child: Row(
              children: [
                Icon(Icons.search,color: blackColor,),
                SizedBox(width: 15,),
                Text('where would you like to go ?',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),)

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 17,bottom: 10,right: 10,top: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,color: Colors.grey,
                )
              )
            ),
            child: Row(
              children: [
                Icon(Icons.person,color: blackColor,),
                SizedBox(width: 10,),
                Text('1 room 2 adults',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 17,bottom: 10,right: 10,top: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 0.5,color: Colors.grey),
                
              )
            ),
            child: Row(
              children: [Icon(Icons.calendar_month,color: blackColor,),
              SizedBox(width: 10,),
              Text('Calendar',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold),)
              ],
              
            ),
          ),
          SizedBox(height: 50,),
          SearchButton(),

        ],
      ),
    );
  }
}
