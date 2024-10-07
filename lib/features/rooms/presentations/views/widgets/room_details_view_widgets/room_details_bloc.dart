import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/room_details_view_widgets/room_details_view_body.dart';

import '../../../../../../core/widgets/custom_failure_widget.dart';
import '../../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../manager/room_cubit/fetch_room_cubit.dart';
class RoomDetailsBloc extends StatelessWidget {
  const RoomDetailsBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<FetchRoomCubit, FetchRoomState>(
        builder: (context, state) {
          if (state is FetchRoomSuccess) {
            return RoomDetailsViewBody(roomModel: state.roomModel,
            );
          } else if (state is FetchRoomFailure) {
            return CustomFailureWidget(errMessage: state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        });
  }
}
