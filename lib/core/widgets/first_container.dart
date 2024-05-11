import 'package:flutter/material.dart';
import 'package:new_app/core/widgets/custom_app_bar_first_container.dart';
import 'package:new_app/core/widgets/custom_list_of_week.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 1, 16, 23)),
      child: const Column(children: [
        SizedBox(height: 80,),
        CustomAppBarFirstContainer(),
        SizedBox(height: 50,),
        CustomListOfWeek(),
      ],),
    );
  }
}