import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchLoaded(pageTitle: '', results: const [])) {
    on<SearchLoadEvent>((event, emit) {
      emit(SearchLoaded(
        pageTitle: event.pageTitle,
        results: event.searchResults,
      ));
    });
  }
}
