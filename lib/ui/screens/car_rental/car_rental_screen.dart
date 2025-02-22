import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';
import 'package:signuppage/core/constants/textstyle.dart';
import 'package:signuppage/ui/screens/home/home_view_model.dart';

class CarRentalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, value, child) => Scaffold(
          
          backgroundColor: blackColor,
          
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
Text("Car Rental Screen",style: style23M.copyWith(color: whiteColor),)
          ],)
             
            
          ),
        ),
      
    );
  }
}
