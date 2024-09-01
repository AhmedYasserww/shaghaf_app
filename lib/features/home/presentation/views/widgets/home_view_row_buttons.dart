import 'package:flutter/material.dart';
import 'home_view_custom_bottom.dart';

class HomeViewRowButtons extends StatelessWidget {
  const HomeViewRowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
     HomeViewCustomButton(
       onPressed: (){},
       text: "Membership",),
         HomeViewCustomButton(onPressed:(){},text: "Birthday",),
         HomeViewCustomButton(
          onPressed:(){},
          text: "photo session",),

      ],
    );

  }
}
