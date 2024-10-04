import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shagaf/features/rooms/data/models/rooms_model/rooms_model.dart';
import 'package:shagaf/features/rooms/data/rooms_repos/rooms_repo.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/functions/api_service.dart';

class RoomsRepoImpl implements RoomsRepo {
  final ApiService apiService;

  RoomsRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<RoomsModel>>> fetchRooms() async {
    try {
      var data = await apiService.get(endPoint: 'api/rooms');
      List<RoomsModel> rooms = [];
      if(data['data']!=null){
        for(var item in data["data"]){
          rooms.add(RoomsModel.fromJson(item));
        }
        //
      }
      else {
        return Left(ServerFailure(errorMessage:"no item found "));
      }
      return right(rooms);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

}
