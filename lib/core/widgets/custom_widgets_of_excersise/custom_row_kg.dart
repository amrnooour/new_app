import 'package:flutter/material.dart';

class CustomRowKg extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final String text;
  const CustomRowKg({super.key,required this.icon,this.isSelected=false,required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(text,style: const TextStyle(color: Colors.black,fontSize: 10),),
            Row(children: [
              const SizedBox(width: 10,),
              Icon(icon,size: 15,color: isSelected?Colors.red:Colors.black,),
            ],)
          ],),
          const SizedBox(width: 10,),
          Container(
            height: 25,
            width: 125,
            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 244, 241, 241)),
            borderRadius: BorderRadius.circular(5)),
            child: const Center(child: Text("86 kg",style: TextStyle(color: Colors.black),)),
          ),
          const SizedBox(width: 10,),
          Container(
            height: 25,
            width: 125,
            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 244, 241, 241)),
            borderRadius: BorderRadius.circular(5)),
            child: const Center(child: Text("6",style: TextStyle(color: Colors.black),)),
          ),
          const SizedBox(width: 10,),
          Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green),
              child: const Center(child: Icon(Icons.check,color: Colors.white,size: 15,)),
            ),
        ],
      ),
    );
  }
}