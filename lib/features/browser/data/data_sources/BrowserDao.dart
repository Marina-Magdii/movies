import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/browser/data/models/Categories/CategoriesResponseModel.dart';

abstract class BrowserDao{
  Future<Either<CategoriesResponseModel,String>>getCategories();
}