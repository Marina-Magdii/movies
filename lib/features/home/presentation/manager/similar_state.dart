part of 'similar_cubit.dart';

sealed class SimilarState {}

final class SimilarInitial extends SimilarState {}
class SimilarError extends SimilarState{
  String error;
  SimilarError(this.error);
}
class SimilarSuccess extends SimilarState{
  SimilarResponseEntity entity;
  SimilarSuccess(this.entity);
}
class SimilarLoading extends SimilarState{}