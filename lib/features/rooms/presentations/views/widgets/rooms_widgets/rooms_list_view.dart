import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/rooms_widgets/rooms_list_view_item.dart';

import '../../../../../../core/utils/app_router.dart';
class RoomsListView extends StatelessWidget {
  const RoomsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (contxt, index) {
          return Column(
            children: [
              InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.kRoomDetailsView);
                  },
                  child: const RoomsListViewItem()),
              SizedBox(
                height: 16.h,
              ),
            ],
          );
        });
  }
}
