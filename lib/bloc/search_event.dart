part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class SearchLoadEvent extends SearchEvent {
  final List<String> searchResults;
  final String pageTitle;
  SearchLoadEvent({required this.pageTitle, required this.searchResults});
}
