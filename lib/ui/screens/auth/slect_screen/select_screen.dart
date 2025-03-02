import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';
import 'package:signuppage/ui/custom_widget/buttons/custom_button_1.dart';
import 'package:signuppage/ui/custom_widget/buttons/custom_gradient_button.dart';
import 'select_screen_view_model.dart';  // Import the ViewModel

class SelectCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectScreenViewModel(),  // Provide the ViewModel to the widget tree
      child: Scaffold(
        backgroundColor: blackColor,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.bgImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.only(left: 20, top: 15, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back, color: blackColor),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Select Car',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.only(right: 40), // Add padding to the row
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(padding: EdgeInsets.only()),
                          Text(
                            'Return to the same Location',
                            style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Consumer<SelectScreenViewModel>(
                            builder: (context, viewModel, child) {
                              return Transform.scale(
                                scale: 0.7, // Reduce the height of the switch
                                child: Switch(
                                  value: viewModel.isOn,
                                  onChanged: (bool value) {
                                    viewModel.toggleSwitch(value);  // Update the state
                                  },
                                  activeColor: Colors.blue,
                                  inactiveThumbColor: Colors.grey,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 0.5,color: Colors.grey),
                          bottom: BorderSide(width: 0.5,color: Colors.grey)
                        )
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.car_crash_outlined,color: Colors.grey,),
                          SizedBox(width: 10,),
                          Text('Pickup Location',style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.5,
                            color: Colors.grey
                          )
                        )
                      ),
                      padding: EdgeInsets.only(top: 11),
                       child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_month,color: Colors.grey,),
                              SizedBox(width: 10,),
                              Text('Wed, Feb 14',style: TextStyle(color: blackColor,),),
                              SizedBox(width: 165,),
                              Row(
                                children: [
                                  Icon(Icons.alarm,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text('10:00AM',style: TextStyle(color: blackColor),)
                                ],
                              )
                            ],
                          )
                        ],
                       ),
                      
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.5,
                            color: Colors.grey
                          )
                        )
                      ),
                      padding: EdgeInsets.only(top: 11),
                       child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_month,color: Colors.grey,),
                              SizedBox(width: 10,),
                              Text('Wed, Feb 14',style: TextStyle(color: blackColor,),),
                              SizedBox(width: 165,),
                              Row(
                                children: [
                                  Icon(Icons.alarm,color: Colors.grey,),
                                  SizedBox(width: 10,),
                                  Text('10:00AM',style: TextStyle(color: blackColor),)
                                ],
                              )
                            ],
                          )
                        ],
                       ),
                      
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 0.5,
                            color: Colors.grey
                          )
                        )
                      ),
                      padding: EdgeInsets.only(top: 7),
                       child: Row(
                        children: [
                          Icon(Icons.person,color: Colors.grey,),
                          SizedBox(width: 10,),
                          Text('Driver age: 25-30',style: TextStyle(color: Colors.grey),)
                        ],
                       )
                      
                    ),
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.center,
                      child: CustomGradientButton())
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
