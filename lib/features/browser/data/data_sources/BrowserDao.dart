import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/browser/data/models/CategoriesResponseModel.dart';

abstract class BrowserDao{
  Future<Either<CategoriesResponseModel,String>>getCategories();
}