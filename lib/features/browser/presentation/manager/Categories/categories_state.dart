part of 'categories_cubit.dart';

sealed class CategoriesState {}

final class CategoriesInitial extends CategoriesState {}
class CategoriesError extends CategoriesState{
  String error;
  CategoriesError(this.error);
}
class CategoriesSuccess extends CategoriesState{
  CategoriesResponseEntity entity;
  CategoriesSuccess(this.entity);
}
class CategoriesLoading extends CategoriesState{}
