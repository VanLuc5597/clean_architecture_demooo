import 'package:architecture_demo/movie/bloc/popular_movies_cubit_state.dart';
import 'package:domain_layer/general/network_status.dart';
import 'package:domain_layer/movie/usecase/get_popular_movies_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PopularMoviesCubit extends Cubit<PopularMoviesCubitState> {
  final _getPopularMoviesUseCase =
      GetIt.instance.get<GetPopularMoviesUseCase>();

  PopularMoviesCubit() : super(PopularMoviesInitialCubitState());

  void fetchNewPage(int page) {
    _getPopularMoviesUseCase.invoke(page).listen((event) {
      // CuongCV debug: the business logic below is just a quick demonstrate.
      // It is NOT the right way to handle the cached & the fresh data.
      // Just a demonstrate, quick example.
      if (NetworkStatus.loading == event.networkStatus && event.data != null) {
        state.popularMovies.addAll(event.data!);
        emit(PopularMoviesCubitState(state.popularMovies, page + 1));
      } else if (NetworkStatus.success == event.networkStatus) {
        if (event.data == null || event.data!.isEmpty) {
          emit(PopularMoviesCubitState(
              state.popularMovies
                ..removeWhere((element) => element.page == page),
              state.nextPageKey));
        } else {
          var list = state.popularMovies;
          var firstIndex = list.indexWhere((element) => element.page == page);

          if (firstIndex >= 0) {
            list
              ..removeWhere((element) => element.page == page)
              ..insertAll(firstIndex, event.data!);
            emit(PopularMoviesCubitState(list, state.nextPageKey));
          } else {
            list.addAll(event.data!);
            emit(PopularMoviesCubitState(list, state.nextPageKey + 1));
          }
        }
      }

      if (event.networkStatus == NetworkStatus.success && event.data != null) {
        state.popularMovies.addAll(event.data!);
        emit(PopularMoviesCubitState(state.popularMovies, page + 1));
      }
    });
  }
}
