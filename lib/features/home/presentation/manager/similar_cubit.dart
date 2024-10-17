import 'package:bloc/bloc.dart';
import 'package:etfarrag/features/home/domain/entities/Similar/SimilarResponseEntity.dart';
import 'package:etfarrag/features/home/domain/use_cases/SimilarUseCase.dart';
import 'package:injectable/injectable.dart';
part 'similar_state.dart';

@injectable
class SimilarCubit extends Cubit<SimilarState> {
  SimilarUseCase useCase;
  @factoryMethod
  SimilarCubit(this.useCase) : super(SimilarInitial());
   getSimilar(String id)async {
     emit(SimilarLoading());
    var result = await useCase.call(id);
    result.fold(
            (response){
              if(response.success==false){
                emit(SimilarError(response.statusMessage!));
              }else{
                emit(SimilarSuccess(response));
              }
            },
            (error) {
              emit(SimilarError(error));
            });
  }

}
