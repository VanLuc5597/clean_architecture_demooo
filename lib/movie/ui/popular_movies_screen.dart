import 'package:architecture_demo/movie/ui/popular_movies_widget.dart';
import 'package:flutter/material.dart';

class PopularMoviesScreen extends StatelessWidget {
  const PopularMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17082A),
      appBar: AppBar(
        backgroundColor: const Color(0xff17082A),
        leading: const Icon(
          Icons.align_horizontal_left_sharp,
          color: Colors.white,
        ),
        title: const Text(
          "Phimmoi.net",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
          )
        ],
      ),
      body: const SafeArea(
        child: PopularMoviesWidget(),
      ),
    );
  }
}
