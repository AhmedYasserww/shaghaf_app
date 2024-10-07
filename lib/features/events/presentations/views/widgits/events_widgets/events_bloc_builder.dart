import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf/core/widgets/custom_failure_widget.dart';
import 'package:shagaf/core/widgets/custom_loading_indicator.dart';
import 'package:shagaf/features/events/presentations/manager/event_cubit/fetch_event_cubit.dart';
import 'package:shagaf/features/events/presentations/views/widgits/events_widgets/events_gird_view.dart';

class EventsBlocBuilder extends StatelessWidget {
  const EventsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchEventCubit, FetchEventState>(
        builder: (context, state) {
      if (state is FetchEventSuccess) {
        return EventsGirdView(
          eventModel: state.events,
        );
      } else if (state is FetchEventFailure) {
        return CustomFailureWidget(errMessage: state.errorMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
