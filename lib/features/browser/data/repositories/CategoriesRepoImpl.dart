import 'package:dartz/dartz.dart';
import 'package:etfarrag/core/Internet/InternetChecker.dart';
import 'package:etfarrag/features/browser/data/data_sources/BrowserDao.dart';
import 'package:etfarrag/features/browser/domain/entities/Categories/CategoriesResponseEntity.dart';
import 'package:etfarrag/features/browser/domain/repositories/CategoriesRepo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CategoriesRepo)
class CategoriesRepoImpl extends CategoriesRepo{
  BrowserDao apiDao;
  @factoryMethod
  CategoriesRepoImpl(this.apiDao);
  @override
  Future<Either<CategoriesResponseEntity, String>> getCategories() async{
    bool isConnected = await InternetChecker.checkNetwork();
    if(isConnected){
    var result = await apiDao.getCategories();
    return result.fold(
            (response){
              if(response.success==false){
                return Right((response.statusMessage!));
              }else {
                return Left(response.toEntity());
              }
            }, (error){
              return Right(error);
    });
    }
    else {
      return const Right("No Internet Connection");
  }
  }

}