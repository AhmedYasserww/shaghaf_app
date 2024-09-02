import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/utils/styles.dart';
import 'package:shagaf/features/home/presentation/views/widgets/category_details_widgets/category_details_view_body.dart';
class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rooms",style: Styles.textStyle20,),
        centerTitle: true,
      ),
      body: CategoryDetailsViewBody(),
    );
  }
}
