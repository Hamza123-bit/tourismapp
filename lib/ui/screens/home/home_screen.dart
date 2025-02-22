// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:signuppage/core/constants/colors.dart';
// import 'package:signuppage/core/constants/textstyle.dart';
// import 'package:signuppage/ui/auth/sign_up/sign_up.dart';

// import 'package:signuppage/ui/home/home_viewmodel.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => HomeViewModel(),
//       child: Consumer<HomeViewModel>(
//         builder: (context, value, child) => DefaultTabController(
//           length: 3,
//           child: Scaffold(
//             ///
//             /// App bar
//             ///
//             ///
//             appBar: AppBar(
//               shadowColor: whiteColor,
//               surfaceTintColor: whiteColor,
//               foregroundColor: blackColor,
//               elevation: 8.0,
//               toolbarHeight: 140,
//               backgroundColor: blackColor,
//               centerTitle: true,
//               title: Text(
//                 "Travelers.com",
//                 style: style23M.copyWith(color: whiteColor),
//               ),
//               actions: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.notifications_active,
//                     color: whiteColor,
//                   ),
//                 ),
//               ],
//               bottom: TabBar(
//                 dividerColor: Colors.transparent,

//                 controller: value.tabController,
//                 indicatorColor: Colors.transparent, // Default indicator hide
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 onTap: (val) {
//                   value.setSelectedIndex(val); // Selected index update karein
//                 },
//                 tabs: [
//                   Tab(
//                     child: Container(
//                       width: 120,
//                       padding: EdgeInsets.symmetric(vertical: 8),
//                       decoration: BoxDecoration(
//                         color: blackColor,
//                         borderRadius: BorderRadius.circular(50),
//                         border: Border.all(
                          
//                           width: 1,
//                           color: value.selectedIndex == 0
//                               ? bor
//                               : Colors
//                                   .transparent, // Sirf selected tab ka border show
//                         ),
                        
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.home, color: Colors.white),
//                           SizedBox(width: 5),
//                           Text("Home", style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     child: Container(
//                       width: 120,
//                       padding: EdgeInsets.symmetric(vertical: 8),
//                       decoration: BoxDecoration(
//                         color: blackColor,
//                         border: Border.all(
//                           width: 1,
//                           color: value.selectedIndex == 1
//                               ? bor
//                               : Colors.transparent,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.explore, color: Colors.white),
//                           SizedBox(width: 5),
//                           Text("Explore",
//                               style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     child: Container(
//                       width: 120,
//                       padding: EdgeInsets.symmetric(vertical: 8),
//                       decoration: BoxDecoration(
//                         color: blackColor,
//                         border: Border.all(
//                           width: 1,
//                           color: value.selectedIndex == 2
//                               ? bor
//                               : Colors.transparent,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.person, color: Colors.white),
//                           SizedBox(width: 5),
//                           Text("Profile",
//                               style: TextStyle(color: Colors.white)),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             body: TabBarView(
//               controller: value.tabController,
//               children: [
//                 SignUpScreen(),
//                 Center(child: Text("Explore Screen")),
//                 Center(child: Text("Profile Screen")),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';
import 'package:signuppage/core/constants/textstyle.dart';

import 'package:signuppage/ui/screens/car_rental/car_rental_screen.dart';
import 'package:signuppage/ui/screens/home/home_view_model.dart';
import 'package:signuppage/ui/screens/stays/stays_screen.dart';
import 'package:signuppage/ui/screens/taxi/taxi_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, value, child) => DefaultTabController(
          length: 3,
          child: Scaffold(
            
            backgroundColor: blackColor,
            ///
            /// App Bar
            /// 
            appBar: _appBar(value),
            ///
            /// Start Body
            /// 
            body: TabBarView(children: [

              StaysScreen(),
              CarRentalScreen(),
              TaxiScreen(),
            ],)
               
              
            ),
          ),
        ),
      
    );
  }
}

AppBar _appBar(HomeViewModel value){
return AppBar(
              shadowColor: whiteColor,
              surfaceTintColor: whiteColor,
              foregroundColor: blackColor,
              elevation: 8.0,
              toolbarHeight: 140,
              backgroundColor: blackColor,
              centerTitle: true,
              title: Text(
                "Travelers.com",
                style: style23M.copyWith(color: whiteColor),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_active,
                    color: whiteColor,
                  ),
                ),
              ],
              bottom: TabBar(
                controller: value.tabController,
                indicatorColor: Colors.transparent, // Hide default indicator
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                onTap: (val) {
                  value.setSelectedIndex(val); // Set selected index when tab is tapped
                },
                tabs: [
                  // **Home Tab**
                  Tab(
                    child: Container(
                      width: 120,
                      padding: const EdgeInsets.all(2), // Space for border effect
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: value.selectedIndex == 0
                            ? const LinearGradient(
                                colors: [Colors.purple, Colors.pink],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                            : null,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: blackColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Image.asset(AppAssets.bed,height: 20,width: 20,fit: BoxFit.cover,),
                            const SizedBox(width: 5),
                            const Text("Stays", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // **Explore Tab**
                  Tab(
                    child: Container(
                      width: 120,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: value.selectedIndex == 1
                            ? const LinearGradient(
                                colors: [Colors.purple, Colors.pink],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                            : null,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: blackColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppAssets.car,height: 20,width: 20,fit: BoxFit.cover,),
                            const SizedBox(width: 5),
                            const Text("car rental",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //
                  // texi tab
                  //
                  Tab(
                    child: Container(
                      width: 120,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: value.selectedIndex == 2
                            ? const LinearGradient(
                                colors: [Colors.purple, Colors.pink],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                            : null,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: blackColor,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppAssets.taxi,height: 20,width: 20,fit: BoxFit.cover,),
                            const SizedBox(width: 5),
                            const Text("Taxi",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
}