import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shagaf/features/events/data/event_repos/event_repo.dart';
import 'package:shagaf/features/events/data/models/event_model.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/functions/api_service.dart';

class EventsRepoImpl implements EventsRepo {
  final ApiService apiService;

  EventsRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<EventModel>>> fetchEvents() async {
    try {
      var data = await apiService.get(endPoint: 'api/events');
      List<EventModel> events = [];
      if (data['data'] != null) {
        for (var item in data["data"]) {
          events.add(EventModel.fromJson(item));
        }
      } else {
        return Left(ServerFailure(errorMessage: "no item found "));
      }
      return right(events);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
