import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/Recommended/RecommendedResponseEntity.dart';
import '../repositories/popular_repo.dart';
@injectable
class RecommendedUseCase {
  PopularRepo repo;
  @factoryMethod
  RecommendedUseCase(this.repo);
  Future<Either<RecommendedResponseEntity, String>> call()async{
    var result = await repo.getRecommended();
    return result.fold(
            (response){
              if(response.success==false){
                return Right(response.statusMessage!);
              }else{
                return Left(response);
              }
            }, (error) {
              return Right(error);
    });
  }
}