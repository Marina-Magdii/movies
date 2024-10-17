import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/browser/domain/repositories/CategoryDetailsRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/CategoryDetails/CategoryDetailsResponseEntity.dart';
@injectable
class CategoryDetailsUseCase{
  CategoryDetailsRepo repo;
  @factoryMethod
  CategoryDetailsUseCase(this.repo);
  Future<Either<CategoryDetailsResponseEntity, String>> call(String id){
    return repo.getDetails(id);
  }
}