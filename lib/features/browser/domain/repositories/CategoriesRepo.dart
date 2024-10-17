import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/browser/domain/entities/Categories/CategoriesResponseEntity.dart';

abstract class CategoriesRepo{
 Future <Either<CategoriesResponseEntity,String>>getCategories();
}