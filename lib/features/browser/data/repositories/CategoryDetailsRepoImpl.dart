import 'package:dartz/dartz.dart';
import 'package:etfarrag/core/Internet/InternetChecker.dart';
import 'package:etfarrag/features/browser/data/data_sources/CategoryDetailsDao.dart';

import 'package:etfarrag/features/browser/domain/entities/CategoryDetails/CategoryDetailsResponseEntity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/CategoryDetailsRepo.dart';
@Injectable(as: CategoryDetailsRepo)
class CategoryDetailsRepoImpl extends CategoryDetailsRepo{
  CategoryDetailsDao apiDao;
  @factoryMethod
  CategoryDetailsRepoImpl(this.apiDao);
  @override
  Future<Either<CategoryDetailsResponseEntity, String>> getDetails(String id) async{
    bool isConnected = await InternetChecker.checkNetwork();
   if(isConnected){
     var result = await apiDao.getDetails(id);
     return result.fold(
             (response) {
               return Left(response.toEntity());
         }, (r){
               return Right(r);
     });
   }
   else {
     return const Right("No Internet Connection");
   }
  }

}