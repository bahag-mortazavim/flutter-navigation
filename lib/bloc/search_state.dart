part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchLoaded extends SearchState {
  final String pageTitle;
  final List<String> results;
  SearchLoaded({required this.pageTitle, required this.results});
}
