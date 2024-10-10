import 'package:dartz/dartz.dart';
import 'package:shagaf/core/errors/failures.dart';
import 'package:shagaf/features/events/data/models/event_model.dart';

abstract class EventsRepo {
  Future<Either<Failure, List<EventModel>>> fetchEvents();
}
