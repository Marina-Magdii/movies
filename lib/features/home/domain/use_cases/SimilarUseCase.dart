import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/home/domain/repositories/SimilarRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/Similar/SimilarResponseEntity.dart';
@injectable
class SimilarUseCase {
  SimilarRepo repo;
  @factoryMethod
  SimilarUseCase(this.repo);
  Future<Either<SimilarResponseEntity, String>> call (String id)=>
    repo.getSimilar(id);
}