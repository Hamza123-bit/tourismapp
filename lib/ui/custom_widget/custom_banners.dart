import 'package:flutter/material.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/model/banners.dart';

class CustomBanners extends StatelessWidget{
  
  BannersModel bannersModel = BannersModel();
  
  CustomBanners({required this.bannersModel});
  @override
  Widget build(BuildContext context) {
  return Container(
                  margin: EdgeInsets.all(10),
                        
                        // color: Colors.cyan, // Cyan background color
                        height: 115,
                        width: 400, 
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10)
                        ),// Adjust height as needed
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text at the top left
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '${bannersModel.name}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // Image at the bottom right
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                '${bannersModel.imgUrl}',
                              scale: 3,
                              ),
                            ),
                          ],
                        ),
                      );
  }
}