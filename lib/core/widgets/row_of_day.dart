import 'package:flutter/material.dart';
import 'package:new_app/core/utils/styles.dart';

class RowOfDay extends StatelessWidget {
  const RowOfDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("Day 01",style: Styles.styleOfRowDay,),
        Text("11 Excerises | 32mins",style: Styles.styleOfExcercise,),
      ],),
      Container(
        height: 35,
        width: 85,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),color: const Color.fromARGB(255, 226, 94, 54),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            const Text("Start",style: TextStyle(color: Colors.white),),
            const SizedBox(width: 7,),
            Container(
              height: 20,
              width: 20,
              decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
              child: const Icon(Icons.play_arrow,color: Color.fromARGB(255, 232, 58, 5),size: 15,),
            )
          ],
        ),
      ),
      ),
    ],);
  }
}