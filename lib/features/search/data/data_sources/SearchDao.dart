import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/search/data/models/SearchResponseModel.dart';

abstract class SearchDao{
  Future<Either<SearchResponseModel,String>>search(String query);
}