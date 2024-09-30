import 'package:dartz/dartz.dart';
import 'package:etfarrag/features/home/domain/entities/Popular/Popular_entity.dart';
import 'package:etfarrag/features/home/domain/entities/Recommended/RecommendedResponseEntity.dart';

import '../entities/NewReleases/NewReleasesEntity.dart';
abstract class PopularRepo {
  Future<Either<PopularEntity,String>>getResponse();
  Future <Either<NewReleasesEntity,String>> getNewResponse();
  Future <Either<RecommendedResponseEntity,String>> getRecommended();

}