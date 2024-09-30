import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:etfarrag/core/ApiManager/ApiManager.dart';
import 'package:etfarrag/core/ApiManager/ApiConstants.dart';
import 'package:etfarrag/features/home/data/data_sources/popular_dao.dart';
import 'package:etfarrag/features/home/data/models/Popular/PopularResponse.dart';
import 'package:etfarrag/features/home/data/models/Recommended/RecommendedResponseModel.dart';
import 'package:injectable/injectable.dart';
import '../../models/NewReleases/NewReleaseResponse.dart';
@Injectable(as: PopularDao)
class PopularApiImpl extends PopularDao{
  ApiManager apiManager;
  @factoryMethod
  PopularApiImpl(this.apiManager);
  @override
  Future<Either<PopularResponse,String>>getResponse() async{
    try{
      Response response = await apiManager.getResponse(
          ApiConstants.popularDomain,
         parameters: {
            "api_key":ApiConstants.apiKey
         });
      PopularResponse result = PopularResponse.fromJson(response.data);
      return Left(result);
    }catch (e){
      return Right(e.toString());
    }
  }
  @override
  Future<Either<NewReleaseResponse, String>> getNewResponse({Map<String, dynamic>? parameters})async {
    try{
      var response = await apiManager.getResponse(ApiConstants.newReleaseDomain,parameters: {
        "api_key": ApiConstants.apiKey
      });
      return Left(NewReleaseResponse.fromJson(response.data));
    }catch (e){
      return Right(e.toString());
    }
  }

  @override
  Future<Either<RecommendedResponseModel, String>> getRecommended() async{
  try{
    var response = await apiManager.getResponse(ApiConstants.recommendedDomain,parameters: {
      "api_key" : ApiConstants.apiKey
    });
    return Left(RecommendedResponseModel.fromJson(response.data));
  }catch(e){
    return Right(e.toString());
  }
  }


}