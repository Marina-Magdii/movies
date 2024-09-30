import 'package:dartz/dartz.dart';
import 'package:etfarrag/core/Internet/InternetChecker.dart';
import 'package:etfarrag/features/search/domain/entities/SearchResponseEntity.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/SearchRepo.dart';
import '../data_sources/SearchDao.dart';

@Injectable(as: SearchRepo)
class SearchRepoImpl extends SearchRepo{
  SearchDao apiDao;
  SearchRepoImpl(this.apiDao);
  @override
  Future<Either<SearchResponseEntity, String>> search(String query)async {
  bool isConnected = await InternetChecker.checkNetwork();
  if(isConnected){
    var result = await apiDao.search(query);
    return result.fold(
            (response)
        {
          return Left(response.toSearchEntity());
        },
            (error){
              return Right(error);
            });
  }
  else{
    return Right("No Internet Connection");
  }
  }

}