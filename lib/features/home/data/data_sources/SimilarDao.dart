import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/home/data/models/Similar/SimilarResponseModel.dart';

abstract class SimilarDao{
  Future<Either<SimilarResponseModel,String>>getSimilar(String id);
}