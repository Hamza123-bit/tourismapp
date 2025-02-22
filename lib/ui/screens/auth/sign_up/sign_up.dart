import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/ui/screens/auth/sign_up/sign_up_view_model.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpViewModel(),
      child: Consumer<SignUpViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Container(
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text(
                        "Sign up with one of the following option",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(137, 203, 190, 190),
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
                          SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(137, 203, 190, 190),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 12),
                              ),
                              child: Image.asset(
                                AppAssets.gicon,
                                height: 18,
                                width: 18,
                                
                              ),
                              // child: Text('Apple',style: TextStyle(color: Colors.white,
                              // fontSize: 18),),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(220, 100, 86, 86),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Email',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(220, 100, 86, 86),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Password',
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(220, 100, 86, 86),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.purple, Colors.pinkAccent],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Create Account",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: RichText(
                          text: const TextSpan(
                            text: "Already have an account ? ",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                text: "Log in",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}








          ///
          /// App Bar
          ///
          // appBar: _appBar(name: 'Sign Up'),
        
          ///
          /// Body
          
          
          
          
          
          
//           Container(
//             height: double.infinity,
//             width: double.infinity,
            
//             decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AppAssets.bgImage),fit: BoxFit.cover)),
//             child: Padding(padding: EdgeInsets.all(16),
            
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 30,),
                
//                 Text('Sign up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
//                 SizedBox(height: 30,),
//                 Text('Sign up with one of the following option',
//                 style: TextStyle(color: Colors.white),),
//                 SizedBox(height: 16,),
//                  Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     // Google Button
//     ElevatedButton(
//       onPressed: () {
//         // Handle Google sign-in
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.black87, // Blackish background
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//       ),
//       child: Image.asset(
//         AppAssets.gicon,
//         height: 28,
//         width: 28,
//       ),
//     ),
//     SizedBox(width: 16), // Space between buttons

//     // Apple Button
//     ElevatedButton(
//       onPressed: () {
//         // Handle Apple sign-in
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.black87, // Blackish background
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//       ),
//       child: Image.asset(
//         AppAssets.aicon,
//         height: 28,
//         width: 28,
//       ),
//     ),
//   ],
// ),

//               ],
//             ),
//             )

//           //   child: Padding(
//           //     padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
//           //     child: Column(
//           //       crossAxisAlignment: CrossAxisAlignment.start,
//           //       children: [
//           //         TextFormField(
//           //           decoration:InputDecoration(
//           //             prefixIcon: Icon(Icons.email),
//           //             hintText: "Email Address",
//           //             labelText: "Email Address",
//           //             border: OutlineInputBorder(
//           //               borderRadius: BorderRadius.circular(20),
//           //             ),
//           //           ),
//           //         ),
//           //         // const SizedBox(height: 20),
//           //         // TextFormField(
//           //         //   obscureText: true,
//           //         //   decoration: const InputDecoration(
//           //         //     prefixIcon:Icon(Icons.password),
//           //         //     suffix: Icon(Icons.visibility),
//           //         //     hintText: "Password",
//           //         //     labelText: "Password",
//           //         //     border: OutlineInputBorder(),
//           //         //   ),
//           //         // ),
            
            
//           //         Text("Awais counter ${model.counter}"),
                  
//           //          const SizedBox(height: 40),
//           //         TextFormField(
//           //           // obscureText: true,
                    
//           //           decoration:  InputDecoration(
//           //             prefixIcon:Icon(Icons.password),
                      
//           //             suffix: Icon(Icons.visibility),
//           //             hintText: "Password",
//           //             labelText: "Password",
//           //             border: OutlineInputBorder(
//           //               borderRadius: BorderRadius.circular(20)
//           //             ),
//           //           ),
//           //         ),
//           //          SizedBox(height: 50), // Optional spacing above the button
//           //           Container(
//           //           alignment: Alignment.center,  // This centers the button
//           //           child: ElevatedButton(
//           //           onPressed: () {},
//           //           style: ElevatedButton.styleFrom(
//           //           backgroundColor: Colors.blue,  // Button background color
//           //           foregroundColor: Colors.white,  // Text color
//           //           ),
//           //           child: Text('Sign Up'),
//           //   ),
//           //           ),
                    
//           //       ],
//           //     ),
              
//           //   ),
//           // ),
//       //       floatingActionButton: FloatingActionButton(
//       //   onPressed: model.incrementCounter,
//       //   tooltip: 'Increment',
//       //   child: const Icon(Icons.add),
//       ), 
//         ),
//       ),
//     );
//   }

//   // AppBar _appBar({required String name}) {
    
//   //   return AppBar(
      
//   //     backgroundColor: Colors.blue,
      
//   //     title: Text(
//   //       name,
//   //       style: TextStyle(color: Colors.white),
//   //     ),
//   //     actions: [
//   //       IconButton(
//   //         icon: const Icon(
//   //           Icons.menu,
//   //           color: Colors.white,
//   //         ),
//   //         onPressed: () {},
//   //       ),
//   //       IconButton(
//   //         icon: Icon(
//   //           Icons.person_add,
//   //           color: Colors.white,
//   //         ),
//   //         onPressed: () {},
//   //       ),
//   //     ],
//   //   );
//   }


