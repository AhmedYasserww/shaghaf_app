part of 'fetch_room_cubit.dart';

@immutable
sealed class FetchRoomState {}

final class FetchRoomInitial extends FetchRoomState {}
final class FetchRoomLoading extends FetchRoomState {}
final class FetchRoomFailure extends FetchRoomState {
  final String errMessage;
  FetchRoomFailure({required this.errMessage});
}
final class FetchRoomSuccess extends FetchRoomState {
  final RoomModel roomModel;

  FetchRoomSuccess({required this.roomModel});
}
