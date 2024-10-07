part of 'fetch_event_cubit.dart';

@immutable
abstract class FetchEventState {}

class FetchEventInitial extends FetchEventState {}

class FetchEventLoading extends FetchEventState {}

class FetchEventSuccess extends FetchEventState {
  final List<EventModel> events;

  FetchEventSuccess({required this.events});
}

class FetchEventFailure extends FetchEventState {
  final String errorMessage;

  FetchEventFailure({required this.errorMessage});
}
