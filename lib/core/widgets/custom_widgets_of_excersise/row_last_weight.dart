import 'package:flutter/material.dart';
import 'package:new_app/core/utils/styles.dart';

class RowLastWeight extends StatelessWidget {
  final bool isVisible;
  final void Function()? onTap;
  const RowLastWeight({super.key,this.isVisible=false,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: const Color.fromARGB(255, 231, 227, 227)),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(children: [
          Text("last weight : 80 - last repos : 12",style: Styles.styleOfRowDay.copyWith(fontSize: 15),),
          const Spacer(),
          Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.black),
              child: const Center(child: Icon(Icons.plus_one_outlined,color: Colors.white,size: 15,))),
              const SizedBox(width: 10,),
              GestureDetector(
                onTap: onTap,
                child:  Icon(isVisible?Icons.arrow_drop_down: Icons.arrow_drop_up,size: 35,)),
        ],),
      ),
    );
  }
}