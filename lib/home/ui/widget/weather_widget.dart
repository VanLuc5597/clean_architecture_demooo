import 'package:architecture_demo/home/viewmodel/weather_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../global/color.dart';

class WeatherWidget extends ConsumerWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherViewModel = ref.watch(weatherProvider);
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 170, 12, 0),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: CommonColor.colorWhite,
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),),
      child: Row(
        children: [
          Text(weatherViewModel.weatherEntity?.nameProvince ?? "")
        ],
      ),
    );
  }

}