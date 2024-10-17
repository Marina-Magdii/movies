import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/home/domain/entities/NewReleases/NewReleasesEntity.dart';
import 'package:etfarrag/features/home/domain/repositories/popular_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class NewReleaseUseCase {
  PopularRepo repo;
  @factoryMethod
  NewReleaseUseCase(this.repo);
  Future<Either<NewReleasesEntity,String>>call(){
    return repo.getNewResponse();
  }
}