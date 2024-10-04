import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf/features/rooms/data/rooms_repos/rooms_repo_impl.dart';
import 'package:shagaf/features/rooms/presentations/manager/rooms_cubit/fetch_rooms_cubit.dart';
import 'package:shagaf/features/rooms/presentations/views/widgets/rooms_widgets/rooms_body.dart';

import '../../../../core/utils/functions/service_locator.dart';
class RoomsView extends StatelessWidget {
  const RoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchRoomsCubit(getIt.get<RoomsRepoImpl>())..fetchRooms(),
      child: const Scaffold(
        body: SafeArea(child: RoomsBody()),
      ),
    );
  }
}
