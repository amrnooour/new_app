import 'package:flutter/material.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/Row_of_images.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/custom_excersise_name.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/custom_row_kg.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/custom_row_of_sets.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/custom_text_row.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/row_last_weight.dart';

class CustomContainerOfExcersise extends StatelessWidget {
  const CustomContainerOfExcersise({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 244, 241, 241)),borderRadius: BorderRadius.circular(10)),
      child: const Column(children: [
        SizedBox(height: 10,),
        CustomExcersiseName(),
        SizedBox(height: 10,),
        CustomRowOfSets(),
        SizedBox(height: 20,),
        RowOfImages(),
        SizedBox(height: 20,),
        RowLastWeight(),
        SizedBox(height: 10,),
        CustomTextRow(),
        SizedBox(height: 10,),
        CustomRowKg(icon: Icons.delete,isSelected: true,text: "1",),
        SizedBox(height: 10,),
        Divider(height: 1,color: Color.fromARGB(255, 244, 241, 241),),
        SizedBox(height: 10,),
        CustomRowKg(icon: Icons.edit,text: "2",),
        SizedBox(height: 10,),
        CustomRowKg(icon: Icons.edit,text: "3",),
      ],),
    );
  }
}