import 'package:dartz/dartz.dart';
import 'package:etfarrag/core/Internet/InternetChecker.dart';
import 'package:etfarrag/features/home/data/data_sources/popular_dao.dart';
import 'package:etfarrag/features/home/domain/entities/Popular/Popular_entity.dart';
import 'package:etfarrag/features/home/domain/entities/Recommended/RecommendedResponseEntity.dart';
import 'package:etfarrag/features/home/domain/repositories/popular_repo.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/NewReleases/NewReleasesEntity.dart';

@Injectable(as: PopularRepo)
class PopularRepoImpl extends PopularRepo{
  PopularDao apiDao;
  @factoryMethod
  PopularRepoImpl(this.apiDao);
  @override
  Future<Either<PopularEntity, String>> getResponse() async{
    bool isConnected = await InternetChecker.checkNetwork();
    if(isConnected){
      var result = await apiDao.getResponse();
      return result.fold(
              (response) {
                return Left(response.toPopularEntity());
              },
              (error) {
                return Right(error);
              });
    }
    else{
      return const Right("No Internet Connection ");
    }
  }

  @override
  Future<Either<NewReleasesEntity, String>> getNewResponse() async{
    bool isConnected = await InternetChecker.checkNetwork();
    if (isConnected){
      var result2 = await apiDao.getNewResponse();
      return result2.fold((response2){
        return Left(response2.toNewReleaseEntity());
      },
              (error) {
            return Right(error);
          });
    }
    else{
      return const Right("No Internet Connection");
    }
  }

  @override
  Future<Either<RecommendedResponseEntity, String>> getRecommended()async {
  bool isConnected= await InternetChecker.checkNetwork();
  if(isConnected){
    var result = await apiDao.getRecommended();
    return result.fold(
            (response) {
              return Left(response.toEntity());
        }, (error) {
              return Right(error);
    });
  }
  else{
    return const Right("No Internet Connection");
  }
  }
}