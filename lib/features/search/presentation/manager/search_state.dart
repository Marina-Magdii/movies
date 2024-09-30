part of 'search_cubit.dart';

sealed class SearchState {}

final class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  SearchResponseEntity entity;
  SearchSuccess(this.entity);
}

class SearchError extends SearchState {
  String error;
  SearchError(this.error);
}
