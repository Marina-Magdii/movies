import 'package:dartz/dartz.dart';
import 'package:etfarrag/core/ApiManager/ApiConstants.dart';
import 'package:etfarrag/core/ApiManager/ApiManager.dart';
import 'package:etfarrag/features/home/data/data_sources/SimilarDao.dart';
import 'package:etfarrag/features/home/data/models/Similar/SimilarResponseModel.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: SimilarDao)
class SimilarApiImpl extends SimilarDao{
  ApiManager apiManager;
  @factoryMethod
  SimilarApiImpl(this.apiManager);
  @override
  Future<Either<SimilarResponseModel, String>> getSimilar(String id )async {
  try{
    var response = await apiManager.getResponse(ApiConstants.similarDomain(id),
    parameters: {
      "api_key":ApiConstants.apiKey
    });
    var result = SimilarResponseModel.fromJson(response.data);
    return Left(result);
  }
      catch(e){
    return Right(e.toString());
      }
  }

}