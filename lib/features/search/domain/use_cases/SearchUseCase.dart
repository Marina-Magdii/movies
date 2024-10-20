import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/search/domain/repositories/SearchRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/SearchResponseEntity.dart';
@injectable
class SearchUseCase{
  SearchRepo repo;
  @factoryMethod
  SearchUseCase(this.repo);
  Future<Either<SearchResponseEntity, String>> call(String query)=> repo.search(query);
}