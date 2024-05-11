import 'package:flutter/material.dart';
import 'package:new_app/core/utils/styles.dart';

class CustomContainerOfWeek extends StatelessWidget {
  final bool isSelected ;
  final String day;
  const CustomContainerOfWeek({super.key,this.isSelected = false,required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 55,
      decoration: BoxDecoration(color: isSelected?const Color.fromARGB(255, 226, 94, 54): const Color.fromARGB(255, 1, 24, 43),
      borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text("Week",style: isSelected? Styles.styleOfWeek : Styles.styleOfWeek.copyWith(color: Colors.grey),),
        Text(day,style: isSelected?Styles.styleOfday : Styles.styleOfday.copyWith(color: Colors.grey),),
      ],),
    );
  }
}