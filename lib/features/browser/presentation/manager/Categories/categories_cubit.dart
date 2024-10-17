import 'package:bloc/bloc.dart';
import 'package:etfarrag/features/browser/domain/entities/Categories/CategoriesResponseEntity.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_cases/CategoriesUseCase.dart';

part 'categories_state.dart';
@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesUseCase useCase;
  @factoryMethod
  CategoriesCubit(this.useCase) : super(CategoriesInitial());
  getCategories()async{
    emit(CategoriesLoading());
   var result = await useCase.call();
   result.fold(
           (response){
             if(response.success==false){
               emit(CategoriesError(response.statusMessage!));
             }
             else{
               emit(CategoriesSuccess(response));
             }
           },
           (error) {
             emit(CategoriesError(error));
           });
  }
}
