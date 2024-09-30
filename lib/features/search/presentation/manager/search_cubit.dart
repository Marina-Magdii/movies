import 'package:bloc/bloc.dart';
import 'package:etfarrag/features/search/domain/entities/SearchResponseEntity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/SearchUseCase.dart';

part 'search_state.dart';
@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchUseCase useCase;
  SearchCubit(this.useCase) : super(SearchInitial());
  search(String query)async{
    emit(SearchLoading());
    var result = await useCase.call(query);
    result.fold(
            (response) {
              if(response.success==false){
                emit(SearchError(response.statusMessage!));
              }
              else{
                emit(SearchSuccess(response));
              }
        },
            (error) {
              emit(SearchError(error));
        });
  }
   searchQuery(String query){
    if(query.isEmpty){
      emit(SearchInitial());
    }
      var results= search(query);
      emit(SearchSuccess(results));
   }
}
