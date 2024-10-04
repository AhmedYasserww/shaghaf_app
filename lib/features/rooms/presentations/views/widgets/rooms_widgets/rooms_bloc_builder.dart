import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf/core/widgets/custom_failure_widget.dart';
import 'package:shagaf/core/widgets/custom_loading_indicator.dart';
import 'package:shagaf/features/rooms/presentations/manager/rooms_cubit/fetch_rooms_cubit.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/rooms_widgets/rooms_list_view.dart';

class RoomsBlocBuilder extends StatelessWidget {
  const RoomsBlocBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchRoomsCubit, FetchRoomsState>(
        builder: (context, state) {
      if (state is FetchRoomsSuccess) {
        return  RoomsListView(roomsModels: state.rooms,);
      } else if (state is FetchRoomsFailure) {
        return CustomFailureWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
