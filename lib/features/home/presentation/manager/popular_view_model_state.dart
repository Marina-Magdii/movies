part of 'popular_view_model_cubit.dart';

sealed class PopularViewModelState {}

class PopularViewModelInitial extends PopularViewModelState {}
class PopularErrorState extends PopularViewModelState{
  String error;
  PopularErrorState(this.error);
}
class PopularLoadingState extends PopularViewModelState{}
class PopularSuccessState extends PopularViewModelState{
  PopularEntity popularEntity;
  PopularSuccessState(this.popularEntity);
}
final class NewReleasesInitial extends PopularViewModelState {}
class NewReleaseSuccessState extends PopularViewModelState{
  NewReleasesEntity entity;
  NewReleaseSuccessState(this.entity);
}
class NewReleaseErrorState extends PopularViewModelState{
  String error;
  NewReleaseErrorState(this.error);
}
class NewReleaseLoadingState extends PopularViewModelState{}
class RecommendedInitial extends PopularViewModelState{}
class RecommendedError extends PopularViewModelState{
  String error;
  RecommendedError(this.error);
}
class RecommendedSuccess extends PopularViewModelState{
  RecommendedResponseEntity entity;
  RecommendedSuccess(this.entity);
}
class RecommendedLoading extends PopularViewModelState{}