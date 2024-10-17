import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/browser/domain/repositories/CategoriesRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/Categories/CategoriesResponseEntity.dart';
@injectable
class CategoriesUseCase {
  CategoriesRepo repo;
  @factoryMethod
  CategoriesUseCase(this.repo);
  Future<Either<CategoriesResponseEntity, String>> call(){
    return repo.getCategories();
  }
}