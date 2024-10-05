import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf/core/utils/functions/service_locator.dart';
import 'package:shagaf/features/events/data/event_repos/event_repo_imp.dart';
import 'package:shagaf/features/events/presentations/manager/event_cubit/fetch_event_cubit.dart';
import 'package:shagaf/features/events/presentations/views/widgits/events_widgets/events_body.dart';
class EventsView extends StatelessWidget {
  const EventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchEventCubit(getIt.get<EventsRepoImpl>())..fetchEvents(),

      child: const Scaffold(
        body: SafeArea(child: EventsBody()),
      ),
    );
  }
}
