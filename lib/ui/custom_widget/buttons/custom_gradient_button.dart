import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 30,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.pink], // Added a second color
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'Search',
          style: TextStyle(
            color: Colors.white, // Replaced whiteColor with Colors.white
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
