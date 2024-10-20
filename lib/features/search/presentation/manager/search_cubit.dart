import 'package:bloc/bloc.dart';
import 'package:etfarrag/features/home/domain/entities/Popular/ResultsEntity.dart';
import 'package:etfarrag/features/search/domain/entities/SearchResponseEntity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/SearchUseCase.dart';

part 'search_state.dart';
@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchUseCase useCase;
  SearchResponseEntity? entity;
  @factoryMethod
  SearchCubit(this.useCase) : super(SearchInitial());
  static SearchCubit get(context)=>BlocProvider.of(context);
  search(String query)async{
    emit(SearchLoading());
    var result = await useCase.call(query);
    result.fold(
            (response) {
              if(response.success==false){
                emit(SearchError(response.statusMessage!));
              }
              else{
                entity = response;
                emit(SearchSuccess(response));
              }
        },
            (error) {
              emit(SearchError(error));
        });
  }
   // searchQuery(String query){
   //  if(query.isEmpty){
   //    emit(SearchInitial());
   //  }
   //    var results= search(query);
   //    emit(SearchSuccess(results));
   // }
}
