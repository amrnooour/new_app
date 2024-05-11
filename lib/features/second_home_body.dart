import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/custom_excersise_name.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/custom_row_kg.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/custom_row_of_sets.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/custom_text_row.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/row_last_weight.dart';
import 'package:new_app/core/widgets/custom_widgets_of_excersise/row_of_images.dart';

class SecondHomeBody extends StatefulWidget {
   bool isVisible;
   SecondHomeBody({super.key,this.isVisible=true});

  @override
  State<SecondHomeBody> createState() => _SecondHomeBodyState();
}

class _SecondHomeBodyState extends State<SecondHomeBody> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Visibility(
                visible: !widget.isVisible,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      widget.isVisible =true;
                    });
                  },
                  child: const RowLastWeight(isVisible: true,))),
              Visibility(
                visible: widget.isVisible,
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      widget.isVisible =false; 
                    });
                  },
                  child: Container(
                    height: 270,
                    width: double.infinity,
                    decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 244, 241, 241))),
                    child:  const Column(children: [
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
                      Divider(height: 1,color: Color.fromARGB(255, 244, 241, 241),),
                      SizedBox(height: 10,),
                      CustomRowKg(icon: Icons.delete,isSelected: true,text: "3",),
                      SizedBox(height: 10,),
                      Divider(height: 1,color: Color.fromARGB(255, 244, 241, 241),),
                      SizedBox(height: 10,),
                      CustomRowKg(icon: Icons.delete,isSelected: true,text: "4",),
                    ],),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 303,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 244, 241, 241))),
                child: const Column(children: [
                  SizedBox(height: 10,),
                  CustomExcersiseName(),
                  SizedBox(height: 10,),
                  CustomRowOfSets(),
                  SizedBox(height: 20,),
                  RowOfImages(),
                  SizedBox(height: 20,),
                  RowLastWeight(),
                ],),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 303,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 244, 241, 241))),
                child: const Column(children: [
                  SizedBox(height: 10,),
                  CustomExcersiseName(),
                  SizedBox(height: 10,),
                  CustomRowOfSets(),
                  SizedBox(height: 20,),
                  RowOfImages(),
                ],),
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}