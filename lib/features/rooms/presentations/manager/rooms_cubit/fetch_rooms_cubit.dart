import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shagaf/features/rooms/data/models/rooms_model/rooms_model.dart';
import 'package:shagaf/features/rooms/data/rooms_repos/rooms_repo.dart';

part 'fetch_rooms_state.dart';

class FetchRoomsCubit extends Cubit<FetchRoomsState> {
  FetchRoomsCubit(this.roomsRepo) : super(FetchRoomsInitial());
  final RoomsRepo roomsRepo;

  Future<void> fetchRooms() async {
    emit(FetchRoomsLoading());
    var result = await roomsRepo.fetchRooms();
    result.fold((failure) {
      emit(FetchRoomsFailure( errMessage: failure.errorMessage));
    }, (rooms) {
      emit(FetchRoomsSuccess(rooms: rooms));
    });
  }
}
