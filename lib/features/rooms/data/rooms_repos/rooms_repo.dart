
import 'package:dartz/dartz.dart';
import 'package:shagaf/core/errors/failures.dart';
import 'package:shagaf/features/rooms/data/models/rooms_model/rooms_model.dart';

abstract class RoomsRepo{
  Future<Either<Failure, List<RoomsModel>>> fetchRooms();
}
