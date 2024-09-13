import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/utils/app_router.dart';
import 'package:shagaf/features/home/presentation/views/widgets/category_details_widgets/category_details_list_view_item.dart';

class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (contxt, index) {
            return Column(
              children: [
                InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kRoomDetailsView);
                  },
                    child: const CategoryDetailsListViewItem()),
                SizedBox(
                  height: 16.h,
                ),
              ],
            );
          }),
    );
  }
}
