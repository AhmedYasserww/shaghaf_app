import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/rooms_widgets/rooms_list_view_item.dart';

import '../../../../../../core/utils/functions/app_router.dart';
import '../../../../data/models/rooms_model/rooms_model.dart';

class RoomsListView extends StatelessWidget {
  const RoomsListView({super.key, required this.roomsModels});
  final List<RoomsModel> roomsModels;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: roomsModels.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kRoomDetailsView,extra: roomsModels[index].id);
                  },
                  child: RoomsListViewItem(
                    roomsModel: roomsModels[index],
                  )),
              SizedBox(
                height: 16.h,
              ),
            ],
          );
        });
  }
}
