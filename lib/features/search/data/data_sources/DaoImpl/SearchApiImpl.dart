import 'package:dartz/dartz.dart';
import 'package:etfarrag/core/ApiManager/ApiConstants.dart';
import 'package:etfarrag/core/ApiManager/ApiManager.dart';
import 'package:etfarrag/features/search/data/data_sources/SearchDao.dart';
import 'package:etfarrag/features/search/data/models/SearchResponseModel.dart';
import 'package:injectable/injectable.dart';
@Injectable( as : SearchDao)
class SearchApiImpl extends SearchDao{
  ApiManager apiManager;
  @factoryMethod
  SearchApiImpl(this.apiManager);
  @override
  Future<Either<SearchResponseModel, String>> search(String query) async{
   try {
     var response = await apiManager.getResponse(ApiConstants.searchDomain(query), parameters: {
       "api_key":ApiConstants.apiKey,
       "query":query
     });
     return Left(SearchResponseModel.fromJson(response.data));
   }    catch(e){
     return Right(e.toString());
   }
  }

}