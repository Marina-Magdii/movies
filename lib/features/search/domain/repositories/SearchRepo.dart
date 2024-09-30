import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/search/domain/entities/SearchResponseEntity.dart';

abstract class SearchRepo{
  Future<Either<SearchResponseEntity,String>>search(String query);
}