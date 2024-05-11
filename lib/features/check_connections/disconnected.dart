import 'package:flutter/material.dart';

class Disconnected extends StatelessWidget {
  const Disconnected({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(children: [
        SizedBox(width: 20,),
        Icon(Icons.error,size: 30,color: Colors.red,),
        SizedBox(width: 10,),
        Text("Connection Is Lost",style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),)
      ],),
    );
  }
}