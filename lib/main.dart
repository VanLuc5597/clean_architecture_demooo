import 'package:architecture_demo/movie/ui/movie_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'di/app_injection.dart';
import 'home/ui/home_screen.dart';

void main() {
  configureInjection();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const HomeScreen(),
          '/movie/details/': (_) => const MovieDetailsScreen(),
        });
  }
}
