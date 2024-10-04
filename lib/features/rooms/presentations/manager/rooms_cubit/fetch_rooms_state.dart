part of 'fetch_rooms_cubit.dart';

@immutable
sealed class FetchRoomsState {}

final class FetchRoomsInitial extends FetchRoomsState {}
final class FetchRoomsLoading extends FetchRoomsState {}
final class FetchRoomsFailure extends FetchRoomsState {
  final String errMessage;

  FetchRoomsFailure({required this.errMessage});
}
final class FetchRoomsSuccess extends FetchRoomsState {
  final List<RoomsModel> rooms;
  FetchRoomsSuccess({required this.rooms});
}
