import 'package:flutter/material.dart';

class RowOfImages extends StatelessWidget {
  const RowOfImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(image: const DecorationImage(image: AssetImage("assets/gym.jpg"),fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(15)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight: Radius.circular(7)),
                color:Color.fromARGB(255, 226, 94, 54) ),
                height: 25,
                width: 60,
                child: const Center(child: Text("Step 1",style: TextStyle(color: Colors.white),))),
            ),),
            const SizedBox(width: 15,),
            Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(image: const DecorationImage(image: AssetImage("assets/gym.jpg"),fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(15)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight: Radius.circular(7)),
                color:Color.fromARGB(255, 226, 94, 54) ),
                height: 25,
                width: 60,
                child: const Center(child: Text("Step 2",style: TextStyle(color: Colors.white),))),
            ),),
        ],
      ),
    );
  }
}

