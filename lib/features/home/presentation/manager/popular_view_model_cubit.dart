import 'package:bloc/bloc.dart';
import 'package:etfarrag/features/home/domain/entities/Popular/Popular_entity.dart';
import 'package:etfarrag/features/home/domain/use_cases/PopularUseCase.dart';
import 'package:etfarrag/features/home/domain/use_cases/RecommendedUseCase.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/NewReleases/NewReleasesEntity.dart';
import '../../domain/entities/Recommended/RecommendedResponseEntity.dart';
import '../../domain/use_cases/NewReleaseUseCase.dart';

part 'popular_view_model_state.dart';
@injectable
class PopularViewModelCubit extends Cubit<PopularViewModelState> {
  @factoryMethod
  PopularViewModelCubit(this.useCase,this.useCase2,this.useCase3) : super(PopularViewModelInitial());
  NewReleaseUseCase useCase;
  getNewResponse() async {
    emit(NewReleaseLoadingState());
    var result2 = await useCase.call();
    result2.fold((response2) {
      if (response2.success == false) {
        emit(NewReleaseErrorState(response2.statusMessage!));
      } else {
        emit(NewReleaseSuccessState(response2));
      }
    }, (error) {
      emit(NewReleaseErrorState(error));
    });
  }
  PopularUseCase useCase2;
  getResponse()async{
    emit(PopularLoadingState());
    var result = await useCase2.call();
    result.fold(
            (response){
             if(response.success==false){
               emit(PopularErrorState(response.statusMessage!));
             }else
               { emit(PopularSuccessState(response));}
            }, (e){
              emit(PopularErrorState(e));
    });
  }

  RecommendedUseCase useCase3;
   getRecommended()async{
    var result = await useCase3.call();
     result.fold(
            (response) {
              if(response.success==false){
                emit(RecommendedError(response.statusMessage!));
              }
              else{
                emit(RecommendedSuccess(response));
              }
            },
            (error)
       {
         emit(RecommendedError(error));
    });
  }
}
