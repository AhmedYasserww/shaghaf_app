import 'package:flutter/material.dart';

import '../../../../../../core/utils/functions/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';

class HomeViewCustomButton extends StatelessWidget {
  const HomeViewCustomButton({super.key, required this.text, this.onPressed});
  final String text;
  final  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: CustomButton(
          onPressed:onPressed ,
          height: 48,
          text: text,
          color: const Color(0xffF04C29).withOpacity(.9),
          textStyle: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}
