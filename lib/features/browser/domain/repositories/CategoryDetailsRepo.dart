import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/browser/domain/entities/CategoryDetails/CategoryDetailsResponseEntity.dart';

abstract class CategoryDetailsRepo {
  Future <Either< CategoryDetailsResponseEntity,String>>getDetails(String id);
}