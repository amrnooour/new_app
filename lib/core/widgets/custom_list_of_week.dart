import 'package:flutter/material.dart';
import 'package:new_app/core/widgets/custom_container_of_week.dart';

class CustomListOfWeek extends StatelessWidget {
  const CustomListOfWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomContainerOfWeek(day: "0${index+1}",isSelected: index==3?true:false,),
        ),),
    );
  }
}