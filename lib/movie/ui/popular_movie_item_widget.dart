import 'package:data_layer/general/movie_image_helper.dart';
import 'package:domain_layer/movie/entity/movie_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:transparent_image/transparent_image.dart';

class PopularMovieItemWidget extends StatelessWidget {
  final MovieEntity movieEntity;

  const PopularMovieItemWidget({Key? key, required this.movieEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: MovieImageHelper.getWidth500Image(
                            movieEntity.backdropPath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (movieEntity.voteAverage > 6.6)
                    Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: const Color(0x80000000)),
                      child: const Text(
                        "Đáng xem",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
              child: Text(
                movieEntity.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
              child: Text(
                movieEntity.originalTitle,
                style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rounded,
                      color: Color(0xffF79E44),
                      size: 21,
                    ),
                    onRatingUpdate: (_) {},
                    itemCount: 5,
                    initialRating: movieEntity.voteAverage * 5 / 10,
                    allowHalfRating: true,
                    unratedColor: const Color(0xff444F61),
                    itemSize: 21,
                    ignoreGestures: true,
                  ),
                  const VerticalDivider(
                    width: 16,
                  ),
                  Text(
                    "${movieEntity.voteAverage}",
                    style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xffF79E44),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed('/movie/details/', arguments: movieEntity);
      },
    );
  }
}
