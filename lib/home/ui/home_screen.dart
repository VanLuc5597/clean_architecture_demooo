import 'package:architecture_demo/home/ui/widget/menu_home_widget.dart';
import 'package:architecture_demo/home/viewmodel/weather_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherViewModel = ref.watch(weatherProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MenuHomeWidget(),
            Text(weatherViewModel.abc)
            // WeatherWidget()
          ],
        ),
      ),
    );
  }
}
