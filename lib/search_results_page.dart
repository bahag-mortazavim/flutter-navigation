import 'package:flutter/material.dart';
import 'bloc/search_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        final searchState = (state as SearchLoaded);

        return CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(state.pageTitle),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) {
                  return ListTile(
                    title: Text(searchState.results[index]),
                  );
                },
                childCount: searchState.results.length,
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchBloc()
        ..add(SearchLoadEvent(
            pageTitle: 'From somewhere',
            searchResults:
                List<String>.generate(100, (index) => 'Result $index'))),
      child: this,
    );
  }
}
