import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/room_model/room_model.dart';
import '../../../data/rooms_repos/rooms_repo.dart';

part 'fetch_room_state.dart';

class FetchRoomCubit extends Cubit<FetchRoomState> {
  FetchRoomCubit(this.roomsRepo) : super(FetchRoomInitial());
  final RoomsRepo roomsRepo;

  Future<void> fetchRoom({required String id}) async {
    emit(FetchRoomLoading());
    var result = await roomsRepo.fetchRoom(id: id);
    print(id);
    result.fold((failure) {
      emit(FetchRoomFailure(errMessage: failure.errorMessage));
    }, (room) {
      emit(FetchRoomSuccess(roomModel: room));
    });
  }
}
