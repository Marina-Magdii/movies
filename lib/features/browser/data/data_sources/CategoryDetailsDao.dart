import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/browser/data/models/CategoryDetails/CategoryDetailsResponseModel.dart';

abstract class CategoryDetailsDao {
  Future <Either < CategoryDetailsResponseModel,String>>getDetails(String id);
}