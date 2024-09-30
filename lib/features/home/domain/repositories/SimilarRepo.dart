import 'package:dartz/dartz.dart';

import '../entities/Similar/SimilarResponseEntity.dart';

abstract class SimilarRepo {
  Future<Either<SimilarResponseEntity,String>>getSimilar(String id);
}