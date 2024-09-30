
import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/home/data/models/Popular/PopularResponse.dart';
import 'package:etfarrag/features/home/data/models/Recommended/RecommendedResponseModel.dart';

import '../models/NewReleases/NewReleaseResponse.dart';

abstract class PopularDao{
  PopularDao();
  Future<Either<PopularResponse,String>>getResponse();
  Future<Either<NewReleaseResponse,String>> getNewResponse();
  Future<Either<RecommendedResponseModel,String>> getRecommended();

}

