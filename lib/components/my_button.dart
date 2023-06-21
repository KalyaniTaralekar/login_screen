import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // final function()?
  MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: ,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
