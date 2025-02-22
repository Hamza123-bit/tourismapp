import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';

class WelcomePage extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: blackColor,),
      ),
      body: SingleChildScrollView(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Stack(
               alignment: Alignment.center, 
              children: [
                
                Image.asset(AppAssets.logo,height: 200,),
        
                
                Column(
                  
                 children: [
                  SizedBox(height: 140,),
                  
                  Text('Welcome',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold,fontSize: 24),),
                  SizedBox(height: 10,),
                   Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: blackColor,width: 1.5),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 9,
                        backgroundImage: AssetImage(AppAssets.gicon),
                      ),
                      subtitle: Text('hamzakhan335590@gm',
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 18,
                      ),
                      ),
                    ),
                   )
                 ] 
                )
                
                
              ],
            ),
            
            SizedBox(height: 30,),
            
            Text('to continue it,s first you ',style: TextStyle(color:smalltext ),),
            SizedBox(height: 8,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'hamza.khan125',hintStyle: TextStyle(color: smalltext),
                labelText: 'password',labelStyle: TextStyle(color: blackColor),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Color.fromARGB(255, 99, 183, 225)
              ),
            ),
            
        
            SizedBox(height: 50,
              child: Row(
                    children: [
                      Padding(padding:EdgeInsets.only(left: 15)),
                      Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                          color: Colors.cyan,// Background color of checkbox
                          borderRadius: BorderRadius.circular(4), // Optional rounded corners
                        ),
                        child: Checkbox(
                          value: true, 
                          onChanged: null, 
                          checkColor: Colors.white, 
                        ),
                      ),
                      SizedBox(width: 8), 
                      Text(
                        "show password",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
              
              
              
              ],
              
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Text('Forgot your password ?',style: TextStyle(color:Colors.cyan),),
                SizedBox(width: 15,),
                ElevatedButton(onPressed: (){}, child: Text('Sign In',style: TextStyle(color: whiteColor),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: blueColor
                ),)
              ],
        
            ),
            ]
          )
                ),
      ),
    );
  }
}
