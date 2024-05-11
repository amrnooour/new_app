import 'package:flutter/material.dart';
import 'package:new_app/core/utils/styles.dart';

class CustomAppBarFirstContainer extends StatelessWidget {
  const CustomAppBarFirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
          child: const Center(child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 12,)),
        ),
        const Text("Workout",style: Styles.styleOWorkout,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: const Color.fromARGB(255, 1, 24, 43)),
          child: const Center(child: Text("i",style: TextStyle(color: Colors.white),)),
        ),
      ],),
    );
  }
}