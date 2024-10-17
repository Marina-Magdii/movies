part of 'category_details_cubit.dart';

sealed class CategoryDetailsState {}

final class CategoryDetailsInitial extends CategoryDetailsState {}
class CategoryDetailsError extends CategoryDetailsState{
  String error;
  CategoryDetailsError(this.error);
}
class CategoryDetailsSuccess extends CategoryDetailsState{
  CategoryDetailsResponseEntity entity;
  CategoryDetailsSuccess(this.entity);
}
class CategoryDetailsLoading extends CategoryDetailsState{}
