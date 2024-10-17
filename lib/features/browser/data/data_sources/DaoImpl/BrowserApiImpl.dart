import 'package:dartz/dartz.dart';
import 'package:etfarrag/core/ApiManager/ApiConstants.dart';
import 'package:etfarrag/core/ApiManager/ApiManager.dart';
import 'package:etfarrag/features/browser/data/data_sources/BrowserDao.dart';
import 'package:etfarrag/features/browser/data/models/Categories/CategoriesResponseModel.dart';
import 'package:injectable/injectable.dart';
@Injectable( as: BrowserDao)
class BrowserApiImpl extends BrowserDao{
  ApiManager apiManager;
  @factoryMethod
  BrowserApiImpl(this.apiManager);
  @override
  Future<Either<CategoriesResponseModel, String>> getCategories() async{
    try{
      var response = await apiManager.getResponse(ApiConstants.categoriesDomain,parameters: {
        "api_key":ApiConstants.apiKey
      }
      );
      return Left(CategoriesResponseModel.fromJson(response.data));
    }catch (e){
      return Right(e.toString());
    }
  }

}