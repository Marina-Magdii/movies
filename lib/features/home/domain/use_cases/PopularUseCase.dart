import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/home/data/repositories/PopularRepoImpl.dart';
import 'package:etfarrag/features/home/domain/repositories/popular_repo.dart';
import 'package:injectable/injectable.dart';
import '../entities/Popular/Popular_entity.dart';

@injectable
class PopularUseCase {
  PopularRepo repoImpl;
  @factoryMethod
  PopularUseCase(this.repoImpl);
  Future<Either<PopularEntity, String>> call() async {
    var result = await repoImpl.getResponse();
    return result.fold((response) {
      if (response.success == false) {
        return Right(response.statusMessage!);
      } else {
        return Left(response);
      }
    }, (error) {
      return Right(error);
    });
  }
}
