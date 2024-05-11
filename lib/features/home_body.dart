import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app/core/widgets/first_container.dart';
import 'package:new_app/core/widgets/second_container.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      FirstContainer(),
      Positioned(
        bottom: 0,
        child: SecondContainer()),
    ],);
  }
}