import 'package:dartz/dartz.dart';
import 'package:etfarrag/core/Internet/InternetChecker.dart';
import 'package:etfarrag/features/home/data/data_sources/SimilarDao.dart';

import 'package:etfarrag/features/home/domain/entities/Similar/SimilarResponseEntity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/SimilarRepo.dart';
@Injectable(as: SimilarRepo)
class SimilarRepoImpl extends SimilarRepo{
  SimilarDao apiDao;
  @factoryMethod
  SimilarRepoImpl(this.apiDao);
  @override
  Future<Either<SimilarResponseEntity, String>> getSimilar(String id)async {
    bool isConnected = await InternetChecker.checkNetwork();
    if (isConnected) {
      var response = await apiDao.getSimilar(id);
      return response.fold(
              (result) {
            return Left(result.toEntity());
          }, (error) {
        return Right(error);
      });
    }
    else {
      return const Right("No Internet Connection");
    }
  }
}