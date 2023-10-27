import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

   MyButton({super.key,
  required this.text,
  required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        // padding: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(vertical: 10.0 ),
        child: 
         Center(
          child: 
          Text(
            text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
          )),
      ),
    );
  }
}