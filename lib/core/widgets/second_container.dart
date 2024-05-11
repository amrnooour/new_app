import 'package:flutter/material.dart';
import 'package:new_app/core/widgets/custom_container_of_excersise.dart';
import 'package:new_app/core/widgets/row_of_day.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height*.64,
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 40,),
            RowOfDay(),
            SizedBox(height: 20,),
            CustomContainerOfExcersise(),
          ],),
        ),
      ),
    );
  }
}