import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/room_details_view_widgets/room_details_bloc.dart';

import '../../../../core/utils/functions/service_locator.dart';
import '../../data/rooms_repos/rooms_repo_impl.dart';
import '../manager/room_cubit/fetch_room_cubit.dart';

class RoomDetailsView extends StatelessWidget {
  const RoomDetailsView({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      FetchRoomCubit(getIt.get<RoomsRepoImpl>())..fetchRoom(id: id),
      child: const Scaffold(
        body: RoomDetailsBloc(),
      ),
    );
  }
}
