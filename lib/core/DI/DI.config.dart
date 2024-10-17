// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/browser/data/data_sources/BrowserDao.dart' as _i106;
import '../../features/browser/data/data_sources/CategoryDetailsDao.dart'
    as _i880;
import '../../features/browser/data/data_sources/DaoImpl/BrowserApiImpl.dart'
    as _i745;
import '../../features/browser/data/data_sources/DaoImpl/CategoryDetailsApiImpl.dart'
    as _i762;
import '../../features/browser/data/repositories/CategoriesRepoImpl.dart'
    as _i36;
import '../../features/browser/data/repositories/CategoryDetailsRepoImpl.dart'
    as _i705;
import '../../features/browser/domain/repositories/CategoriesRepo.dart'
    as _i201;
import '../../features/browser/domain/repositories/CategoryDetailsRepo.dart'
    as _i896;
import '../../features/browser/domain/use_cases/CategoriesUseCase.dart'
    as _i135;
import '../../features/browser/domain/use_cases/CategoryDetailsUseCase.dart'
    as _i183;
import '../../features/browser/presentation/manager/Categories/categories_cubit.dart'
    as _i321;
import '../../features/browser/presentation/manager/CategoryDetails/category_details_cubit.dart'
    as _i401;
import '../../features/home/data/data_sources/dao_Impl/popular_api_impl.dart'
    as _i815;
import '../../features/home/data/data_sources/dao_Impl/SimilarApiImpl.dart'
    as _i160;
import '../../features/home/data/data_sources/popular_dao.dart' as _i427;
import '../../features/home/data/data_sources/SimilarDao.dart' as _i987;
import '../../features/home/data/repositories/PopularRepoImpl.dart' as _i722;
import '../../features/home/data/repositories/SimilarRepoImpl.dart' as _i853;
import '../../features/home/domain/repositories/popular_repo.dart' as _i1009;
import '../../features/home/domain/repositories/SimilarRepo.dart' as _i1040;
import '../../features/home/domain/use_cases/NewReleaseUseCase.dart' as _i767;
import '../../features/home/domain/use_cases/PopularUseCase.dart' as _i625;
import '../../features/home/domain/use_cases/RecommendedUseCase.dart' as _i526;
import '../../features/home/domain/use_cases/SimilarUseCase.dart' as _i29;
import '../../features/home/presentation/manager/popular_view_model_cubit.dart'
    as _i863;
import '../../features/home/presentation/manager/similar_cubit.dart' as _i516;
import '../../features/search/data/data_sources/DaoImpl/SearchApiImpl.dart'
    as _i500;
import '../../features/search/data/data_sources/SearchDao.dart' as _i723;
import '../../features/search/data/repositories/SearchRepoImpl.dart' as _i381;
import '../../features/search/domain/repositories/SearchRepo.dart' as _i599;
import '../../features/search/domain/use_cases/SearchUseCase.dart' as _i960;
import '../../features/search/presentation/manager/search_cubit.dart' as _i827;
import '../ApiManager/ApiManager.dart' as _i211;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i211.ApiManager>(() => _i211.ApiManager());
    gh.factory<_i723.SearchDao>(
        () => _i500.SearchApiImpl(gh<_i211.ApiManager>()));
    gh.factory<_i880.CategoryDetailsDao>(
        () => _i762.CategoryDetailsApiImpl(gh<_i211.ApiManager>()));
    gh.factory<_i427.PopularDao>(
        () => _i815.PopularApiImpl(gh<_i211.ApiManager>()));
    gh.factory<_i987.SimilarDao>(
        () => _i160.SimilarApiImpl(gh<_i211.ApiManager>()));
    gh.factory<_i106.BrowserDao>(
        () => _i745.BrowserApiImpl(gh<_i211.ApiManager>()));
    gh.factory<_i1040.SimilarRepo>(
        () => _i853.SimilarRepoImpl(gh<_i987.SimilarDao>()));
    gh.factory<_i201.CategoriesRepo>(
        () => _i36.CategoriesRepoImpl(gh<_i106.BrowserDao>()));
    gh.factory<_i1009.PopularRepo>(
        () => _i722.PopularRepoImpl(gh<_i427.PopularDao>()));
    gh.factory<_i29.SimilarUseCase>(
        () => _i29.SimilarUseCase(gh<_i1040.SimilarRepo>()));
    gh.factory<_i599.SearchRepo>(
        () => _i381.SearchRepoImpl(gh<_i723.SearchDao>()));
    gh.factory<_i516.SimilarCubit>(
        () => _i516.SimilarCubit(gh<_i29.SimilarUseCase>()));
    gh.factory<_i896.CategoryDetailsRepo>(
        () => _i705.CategoryDetailsRepoImpl(gh<_i880.CategoryDetailsDao>()));
    gh.factory<_i183.CategoryDetailsUseCase>(
        () => _i183.CategoryDetailsUseCase(gh<_i896.CategoryDetailsRepo>()));
    gh.factory<_i960.SearchUseCase>(
        () => _i960.SearchUseCase(gh<_i599.SearchRepo>()));
    gh.factory<_i401.CategoryDetailsCubit>(
        () => _i401.CategoryDetailsCubit(gh<_i183.CategoryDetailsUseCase>()));
    gh.factory<_i135.CategoriesUseCase>(
        () => _i135.CategoriesUseCase(gh<_i201.CategoriesRepo>()));
    gh.factory<_i767.NewReleaseUseCase>(
        () => _i767.NewReleaseUseCase(gh<_i1009.PopularRepo>()));
    gh.factory<_i526.RecommendedUseCase>(
        () => _i526.RecommendedUseCase(gh<_i1009.PopularRepo>()));
    gh.factory<_i625.PopularUseCase>(
        () => _i625.PopularUseCase(gh<_i1009.PopularRepo>()));
    gh.factory<_i321.CategoriesCubit>(
        () => _i321.CategoriesCubit(gh<_i135.CategoriesUseCase>()));
    gh.factory<_i863.PopularViewModelCubit>(() => _i863.PopularViewModelCubit(
          gh<_i767.NewReleaseUseCase>(),
          gh<_i625.PopularUseCase>(),
          gh<_i526.RecommendedUseCase>(),
        ));
    gh.factory<_i827.SearchCubit>(
        () => _i827.SearchCubit(gh<_i960.SearchUseCase>()));
    return this;
  }
}
