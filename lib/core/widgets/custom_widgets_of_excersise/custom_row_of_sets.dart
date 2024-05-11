import 'package:flutter/material.dart';

class CustomRowOfSets extends StatelessWidget {
  const CustomRowOfSets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 80,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 231, 227, 227),borderRadius: BorderRadius.circular(5)),
            child: const Center(child: Text("Sets : 4 sets",style:TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),)),
          ),
          const SizedBox(width: 5,),
          Container(
            height: 20,
            width: 80,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 231, 227, 227),borderRadius: BorderRadius.circular(5)),
            child: const Center(child: Text("Reps : 5 reps",style:TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),)),
          ),
          const SizedBox(width: 5,),
          Container(
            height: 20,
            width: 80,
            decoration: BoxDecoration(color: const Color.fromARGB(255, 231, 227, 227),borderRadius: BorderRadius.circular(5)),
            child: const Center(child: Text("Rest : 30 min",style:TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),)),
          ),
        ],
      ),
    );
  }
}