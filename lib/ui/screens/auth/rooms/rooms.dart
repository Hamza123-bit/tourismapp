import 'package:flutter/material.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';
import 'package:signuppage/ui/screens/auth/dayuse/dayuse.dart';
import 'package:signuppage/ui/screens/auth/overnight/overnight.dart';

class rooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: blackColor,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AppAssets.bgImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 130,
                  padding: const EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: blackColor,
                              size: 28,
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Text(
                            'Rooms',
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          AppAssets.elipse,
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
            Positioned(
              top: 110,
              left: 80,
              right: 80,
              child: Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 5),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          color: redColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 3),
                        child: const Text(
                          'New',
                          style: TextStyle(color: blackColor),
                        ),
                      ),
                    ),
                    
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        labelColor: Colors.cyan,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.cyan,
                        isScrollable: true,
                        labelPadding: const EdgeInsets.only(left: 0, right: 5),
                        tabs: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 0, right: 8),
                            child: const Tab(text: "Overnight"),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 22, right: 2),
                            child: const Tab(text: "Dayuse"),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Overnight(),
                          DayUse(),
                        ],
                      ),
                    ),
                  ],
                  
                ),
              ),
            ),
          ],
          
        ),
        // bottomNavigationBar: CustomNavBar(),
        
      ),
    );
  }
}
