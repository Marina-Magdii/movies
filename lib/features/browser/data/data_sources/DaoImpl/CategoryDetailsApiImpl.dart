import 'package:dartz/dartz.dart';
import 'package:etfarrag/core/ApiManager/ApiConstants.dart';
import 'package:etfarrag/core/ApiManager/ApiManager.dart';
import 'package:etfarrag/features/browser/data/data_sources/CategoryDetailsDao.dart';
import 'package:etfarrag/features/browser/data/models/CategoryDetails/CategoryDetailsResponseModel.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CategoryDetailsDao)
class CategoryDetailsApiImpl extends CategoryDetailsDao{
  ApiManager apiManager;
  @factoryMethod
  CategoryDetailsApiImpl(this.apiManager);
  @override
  Future<Either<CategoryDetailsResponseModel, String>> getDetails(String id) async{
   try{
     var response = await apiManager.getResponse(ApiConstants.eachCategoryDomain,parameters:{
       "api_key":ApiConstants.apiKey,
       "with_genres":id
     });
     return Left(CategoryDetailsResponseModel.fromJson(response.data));
   }catch (e){
     return Right(e.toString());
   }
  }

}