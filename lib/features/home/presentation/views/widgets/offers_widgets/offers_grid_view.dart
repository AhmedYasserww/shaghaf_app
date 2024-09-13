import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/features/home/presentation/views/widgets/offers_widgets/offers_item.dart';

class OffersGridView extends StatelessWidget {
  const OffersGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h
        ),
        itemCount: 10,
        itemBuilder: (context,index){
          return const OffersItem();
        });
  }
}
