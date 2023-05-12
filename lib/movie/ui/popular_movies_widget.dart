import 'package:architecture_demo/movie/bloc/popular_movies_cubit.dart';
import 'package:architecture_demo/movie/bloc/popular_movies_cubit_state.dart';
import 'package:architecture_demo/movie/ui/popular_movie_item_widget.dart';
import 'package:domain_layer/movie/entity/movie_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PopularMoviesWidget extends StatefulWidget {
  const PopularMoviesWidget({Key? key}) : super(key: key);

  @override
  State<PopularMoviesWidget> createState() => _PopularMoviesWidgetState();
}

class _PopularMoviesWidgetState extends State<PopularMoviesWidget> {
  final _pagingController = PagingController<int, MovieEntity>(firstPageKey: 1);
  final _popularMoviesCubit = PopularMoviesCubit();

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _popularMoviesCubit.fetchNewPage(pageKey);
    });
  }

  @override
  Widget build(BuildContext context) => BlocProvider<PopularMoviesCubit>.value(
        value: _popularMoviesCubit,
        child: BlocListener<PopularMoviesCubit, PopularMoviesCubitState>(
          listener: (_, state) {
            _pagingController.value = PagingState(
                nextPageKey: state.nextPageKey, itemList: state.popularMovies);
          },
          child: PagedListView<int, MovieEntity>(
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<MovieEntity>(
              itemBuilder: (context, item, index) => Container(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: PopularMovieItemWidget(movieEntity: item),
              ),
            ),
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
