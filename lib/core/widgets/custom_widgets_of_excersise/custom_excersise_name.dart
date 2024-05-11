import 'package:flutter/material.dart';
import 'package:new_app/core/utils/styles.dart';

class CustomExcersiseName extends StatelessWidget {
  const CustomExcersiseName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 28,
            width: 25,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.black),
            child: const Center(child: Icon(Icons.cached,color: Colors.white,size: 18,)),
          ),
          const SizedBox(width: 10,),
          Text("Excersise Name",style: Styles.styleOfRowDay.copyWith(fontSize: 25),)
        ],
      ),
    );
  }
}