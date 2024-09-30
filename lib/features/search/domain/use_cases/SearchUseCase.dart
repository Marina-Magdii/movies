import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/search/domain/repositories/SearchRepo.dart';
import 'package:injectable/injectable.dart';

import '../entities/SearchResponseEntity.dart';
@injectable
class SearchUseCase{
  SearchRepo repo;
  @factoryMethod
  SearchUseCase(this.repo);
  Future<Either<SearchResponseEntity, String>> call(String query)async{
    var result = await repo.search(query);
    return result.fold(
            (response) {
              if (response.success==false){
                return Right(response.statusMessage!);
              }
              else {
                return Left(response);
              }
            }
        , (error){
              return Right(error);
    });
  }
}