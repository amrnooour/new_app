import 'package:flutter/material.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Text("WEIGHT",style: TextStyle(color: Colors.black),),
        Text("REPS",style: TextStyle(color: Colors.black),
        )],),
    );
  }
}