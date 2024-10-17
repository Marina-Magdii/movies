import 'package:bloc/bloc.dart';
import 'package:etfarrag/features/browser/domain/entities/CategoryDetails/CategoryDetailsResponseEntity.dart';
import 'package:etfarrag/features/browser/domain/use_cases/CategoryDetailsUseCase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'category_details_state.dart';
@injectable
class CategoryDetailsCubit extends Cubit<CategoryDetailsState> {
  @factoryMethod
  CategoryDetailsCubit(this.useCase) : super(CategoryDetailsInitial());
  CategoryDetailsUseCase useCase;
  getCategories(String id)async{
    emit(CategoryDetailsLoading());
    var result = await useCase.call(id);
    result.fold(
            (response){
              if(response.success==false){
                emit(CategoryDetailsError(response.statusMessage!));
              }
              else {
                emit(CategoryDetailsSuccess(response));
              }
            }, (r) {
              emit(CategoryDetailsError(r));
    });
  }
}
