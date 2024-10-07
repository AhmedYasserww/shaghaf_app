import 'package:dartz/dartz.dart';
import 'package:shagaf/core/errors/failures.dart';
import 'package:shagaf/features/rooms/data/models/rooms_model/rooms_model.dart';

import '../models/room_model/room_model.dart';

abstract class RoomsRepo {
  Future<Either<Failure, List<RoomsModel>>> fetchRooms();
  Future<Either<Failure, RoomModel>> fetchRoom({required String id});
}
