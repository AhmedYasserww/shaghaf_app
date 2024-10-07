import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shagaf/features/events/data/event_repos/event_repo.dart';
import 'package:shagaf/features/events/data/models/event_model.dart';

part 'fetch_event_state.dart';

class FetchEventCubit extends Cubit<FetchEventState> {
  FetchEventCubit(this.eventsRepo) : super(FetchEventInitial());
  final EventsRepo eventsRepo;

  Future<void> fetchEvents() async {
    emit(FetchEventLoading());
    var result = await eventsRepo.fetchEvents();
    result.fold((failure) {
      emit(FetchEventFailure(errorMessage: failure.errorMessage));
    }, (rooms) {
      emit(FetchEventSuccess(events: rooms));
    });
  }
}
