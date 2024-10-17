import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/Recommended/RecommendedResponseEntity.dart';
import '../repositories/popular_repo.dart';
@injectable
class RecommendedUseCase {
  PopularRepo repo;
  @factoryMethod
  RecommendedUseCase(this.repo);
  Future<Either<RecommendedResponseEntity, String>> call(){
    return repo.getRecommended();
  }
}